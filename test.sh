#!/usr/bin/env bash

# Multi-Language Hello World Test Script
# This script tests all Hello World implementations to verify correct output

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Configuration
CONFIG_FILE="languages.json"
TEMP_DIR=".test_temp"
VERBOSE=false

# Expected outputs (acceptable variations)
declare -a EXPECTED_OUTPUTS=(
    "Hello, World!"
    "Hello World!"
    "Hello, World"
    "Hello World"
    "hello, world!"
    "hello world!"
)

# Test results
declare -a PASSED_TESTS=()
declare -a FAILED_TESTS=()
declare -a SKIPPED_TESTS=()

# Function to display usage
usage() {
    echo "Usage: $0 [OPTIONS] [LANGUAGE_NAME]"
    echo ""
    echo "Options:"
    echo "  <language>          Test a specific language"
    echo "  --all               Test all languages (default)"
    echo "  --category <cat>    Test languages in a specific category"
    echo "  --available-only    Test only languages with installed runtimes"
    echo "  --verbose           Show detailed output for each test"
    echo "  -h, --help          Display this help message"
    echo ""
    echo "Examples:"
    echo "  $0 Python           Test Python Hello World"
    echo "  $0 --all            Test all languages"
    echo "  $0 --category compiled  Test all compiled languages"
    echo "  $0 --available-only Test only installed languages"
    echo "  $0 --verbose --all  Test all with detailed output"
    exit 0
}

# Function to check if jq is installed
check_jq() {
    if ! command -v jq &> /dev/null; then
        echo -e "${RED}Error: jq is required but not installed.${NC}"
        echo "Please install jq to use this script:"
        echo "  macOS: brew install jq"
        echo "  Linux: apt-get install jq or yum install jq"
        exit 1
    fi
}

# Function to check if config file exists
check_config() {
    if [ ! -f "$CONFIG_FILE" ]; then
        echo -e "${RED}Error: Configuration file '$CONFIG_FILE' not found.${NC}"
        exit 1
    fi
}

# Function to get language info
get_language_info() {
    local lang_name="$1"
    jq -r --arg name "$lang_name" '.languages[] | select(.name == $name)' "$CONFIG_FILE"
}

# Function to check if command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Function to extract command name from compile/run command
extract_command() {
    local cmd="$1"
    # Extract the first word (command name)
    echo "$cmd" | awk '{print $1}'
}

# Function to check if runtime is available
is_runtime_available() {
    local lang_info="$1"
    
    local run_cmd=$(echo "$lang_info" | jq -r '.runCommand')
    local compile_cmd=$(echo "$lang_info" | jq -r '.compileCommand')
    
    # Check compile command if it exists
    if [ "$compile_cmd" != "null" ] && [ -n "$compile_cmd" ]; then
        local compiler=$(extract_command "$compile_cmd")
        if ! command_exists "$compiler"; then
            return 1
        fi
    fi
    
    # Check run command
    local runner=$(extract_command "$run_cmd")
    # Skip checking for relative paths (like ./hello)
    if [[ ! "$runner" =~ ^\. ]]; then
        if ! command_exists "$runner"; then
            return 1
        fi
    fi
    
    return 0
}

# Function to compile if needed
compile_language() {
    local lang_name="$1"
    local lang_info="$2"
    local work_dir="$3"
    
    local compile_cmd=$(echo "$lang_info" | jq -r '.compileCommand')
    local file_path=$(echo "$lang_info" | jq -r '.file')
    
    if [ "$compile_cmd" = "null" ] || [ -z "$compile_cmd" ]; then
        return 0
    fi
    
    # Get the base filename
    local base_file=$(basename "$file_path")
    
    # Replace {file} placeholder with base filename
    compile_cmd="${compile_cmd//\{file\}/$base_file}"
    
    if [ "$VERBOSE" = true ]; then
        echo -e "${YELLOW}  Compiling: $compile_cmd${NC}"
    fi
    
    # Execute compile command in the work directory
    cd "$work_dir"
    local compile_output
    local compile_exit_code
    
    compile_output=$(eval "$compile_cmd" 2>&1)
    compile_exit_code=$?
    
    cd - > /dev/null
    
    if [ $compile_exit_code -ne 0 ]; then
        if [ "$VERBOSE" = true ]; then
            echo -e "${RED}  Compilation failed:${NC}"
            echo "$compile_output"
        fi
        return 1
    fi
    
    return 0
}

# Function to check if output matches expected
is_output_valid() {
    local output="$1"
    
    # Trim whitespace
    output=$(echo "$output" | xargs)
    
    # Check against all acceptable variations
    for expected in "${EXPECTED_OUTPUTS[@]}"; do
        if [ "$output" = "$expected" ]; then
            return 0
        fi
    done
    
    return 1
}

# Function to test a single language
test_language() {
    local lang_name="$1"
    local available_only="$2"
    
    # Get language info
    local lang_info=$(get_language_info "$lang_name")
    
    if [ -z "$lang_info" ]; then
        echo -e "${RED}✗ $lang_name: Language not found in configuration${NC}"
        FAILED_TESTS+=("$lang_name: Not found in configuration")
        return 1
    fi
    
    # Extract language details
    local file_path=$(echo "$lang_info" | jq -r '.file')
    local run_cmd=$(echo "$lang_info" | jq -r '.runCommand')
    local category=$(echo "$lang_info" | jq -r '.category')
    
    # Check if file exists
    if [ ! -f "$file_path" ]; then
        echo -e "${RED}✗ $lang_name: Source file not found${NC}"
        FAILED_TESTS+=("$lang_name: Source file not found")
        return 1
    fi
    
    # Check runtime availability
    if ! is_runtime_available "$lang_info"; then
        if [ "$available_only" = true ]; then
            if [ "$VERBOSE" = true ]; then
                echo -e "${CYAN}⊘ $lang_name: Runtime not available (skipped)${NC}"
            fi
            SKIPPED_TESTS+=("$lang_name: Runtime not available")
            return 2
        else
            echo -e "${RED}✗ $lang_name: Runtime not available${NC}"
            FAILED_TESTS+=("$lang_name: Runtime not available")
            return 1
        fi
    fi
    
    # Create temporary work directory
    local work_dir="$TEMP_DIR/$lang_name"
    mkdir -p "$work_dir"
    
    # Copy source file to work directory
    local file_dir=$(dirname "$file_path")
    cp -r "$file_dir"/* "$work_dir/" 2>/dev/null || true
    
    # Compile if needed
    if ! compile_language "$lang_name" "$lang_info" "$work_dir"; then
        echo -e "${RED}✗ $lang_name: Compilation failed${NC}"
        FAILED_TESTS+=("$lang_name: Compilation failed")
        rm -rf "$work_dir"
        return 1
    fi
    
    # Get the base filename
    local base_file=$(basename "$file_path")
    
    # Replace {file} placeholder
    run_cmd="${run_cmd//\{file\}/$base_file}"
    
    if [ "$VERBOSE" = true ]; then
        echo -e "${YELLOW}  Running: $run_cmd${NC}"
    fi
    
    # Execute run command and capture output
    cd "$work_dir"
    local output
    local exit_code
    
    output=$(eval "$run_cmd" 2>&1)
    exit_code=$?
    
    cd - > /dev/null
    rm -rf "$work_dir"
    
    # Check exit code
    if [ $exit_code -ne 0 ]; then
        echo -e "${RED}✗ $lang_name: Execution failed (exit code: $exit_code)${NC}"
        if [ "$VERBOSE" = true ]; then
            echo -e "${RED}  Output: $output${NC}"
        fi
        FAILED_TESTS+=("$lang_name: Execution failed")
        return 1
    fi
    
    # Validate output
    if is_output_valid "$output"; then
        echo -e "${GREEN}✓ $lang_name: $output${NC}"
        PASSED_TESTS+=("$lang_name")
        return 0
    else
        echo -e "${RED}✗ $lang_name: Unexpected output${NC}"
        echo -e "${RED}  Expected: Hello, World! (or variation)${NC}"
        echo -e "${RED}  Got: $output${NC}"
        FAILED_TESTS+=("$lang_name: Unexpected output - '$output'")
        return 1
    fi
}

# Function to test all languages
test_all_languages() {
    local category="$1"
    local available_only="$2"
    
    echo -e "${BLUE}Testing Hello World implementations${NC}"
    if [ -n "$category" ]; then
        echo -e "${BLUE}Category: $category${NC}"
    fi
    if [ "$available_only" = true ]; then
        echo -e "${CYAN}Mode: Testing only languages with available runtimes${NC}"
    fi
    echo ""
    
    # Get list of languages
    local languages
    if [ -n "$category" ]; then
        languages=$(jq -r --arg cat "$category" '.languages[] | select(.category == $cat) | .name' "$CONFIG_FILE")
    else
        languages=$(jq -r '.languages[].name' "$CONFIG_FILE")
    fi
    
    # Count total languages
    local total=$(echo "$languages" | wc -l | xargs)
    
    echo -e "${BLUE}Running tests for $total languages...${NC}"
    echo ""
    
    # Test each language
    while IFS= read -r lang; do
        test_language "$lang" "$available_only" || true
    done <<< "$languages"
}

# Function to display test summary
display_summary() {
    local total=$((${#PASSED_TESTS[@]} + ${#FAILED_TESTS[@]} + ${#SKIPPED_TESTS[@]}))
    
    echo ""
    echo "========================================"
    echo -e "${BLUE}Test Summary${NC}"
    echo "========================================"
    echo "  Total:   $total"
    echo -e "  ${GREEN}Passed:  ${#PASSED_TESTS[@]}${NC}"
    echo -e "  ${RED}Failed:  ${#FAILED_TESTS[@]}${NC}"
    
    if [ ${#SKIPPED_TESTS[@]} -gt 0 ]; then
        echo -e "  ${CYAN}Skipped: ${#SKIPPED_TESTS[@]}${NC}"
    fi
    
    echo ""
    
    # Show failed tests
    if [ ${#FAILED_TESTS[@]} -gt 0 ]; then
        echo -e "${RED}Failed Tests:${NC}"
        for test in "${FAILED_TESTS[@]}"; do
            echo -e "  ${RED}✗${NC} $test"
        done
        echo ""
    fi
    
    # Show skipped tests in verbose mode
    if [ "$VERBOSE" = true ] && [ ${#SKIPPED_TESTS[@]} -gt 0 ]; then
        echo -e "${CYAN}Skipped Tests:${NC}"
        for test in "${SKIPPED_TESTS[@]}"; do
            echo -e "  ${CYAN}⊘${NC} $test"
        done
        echo ""
    fi
    
    # Exit with appropriate code
    if [ ${#FAILED_TESTS[@]} -gt 0 ]; then
        exit 1
    else
        exit 0
    fi
}

# Main script
main() {
    check_jq
    check_config
    
    # Create temp directory
    mkdir -p "$TEMP_DIR"
    
    # Parse arguments
    local category=""
    local available_only=false
    local test_all=false
    local specific_lang=""
    
    if [ $# -eq 0 ]; then
        test_all=true
    fi
    
    while [ $# -gt 0 ]; do
        case "$1" in
            -h|--help)
                usage
                ;;
            --verbose)
                VERBOSE=true
                shift
                ;;
            --all)
                test_all=true
                shift
                ;;
            --category)
                if [ -z "$2" ]; then
                    echo -e "${RED}Error: --category requires a category name${NC}"
                    exit 1
                fi
                category="$2"
                test_all=true
                shift 2
                ;;
            --available-only)
                available_only=true
                shift
                ;;
            *)
                specific_lang="$1"
                shift
                ;;
        esac
    done
    
    # Execute tests
    if [ -n "$specific_lang" ]; then
        # Test specific language
        echo -e "${BLUE}Testing $specific_lang...${NC}"
        echo ""
        test_language "$specific_lang" "$available_only"
        display_summary
    elif [ "$test_all" = true ]; then
        # Test all languages
        test_all_languages "$category" "$available_only"
        display_summary
    else
        usage
    fi
    
    # Cleanup
    rm -rf "$TEMP_DIR"
}

# Run main function
main "$@"
