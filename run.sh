#!/usr/bin/env bash

# Multi-Language Hello World Runner
# This script executes Hello World programs in various programming languages

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
CONFIG_FILE="languages.json"
TEMP_DIR=".run_temp"

# Function to display usage
usage() {
    echo "Usage: $0 [OPTIONS] [LANGUAGE_NAME]"
    echo ""
    echo "Options:"
    echo "  --list              List all available languages"
    echo "  --category <cat>    List or run languages in a specific category"
    echo "  --all               Run all languages"
    echo "  -h, --help          Display this help message"
    echo ""
    echo "Examples:"
    echo "  $0 Python           Run Python Hello World"
    echo "  $0 --list           List all available languages"
    echo "  $0 --category compiled  List all compiled languages"
    echo "  $0 --all            Run all languages"
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

# Function to list all languages
list_languages() {
    local category="$1"
    
    echo -e "${BLUE}Available Languages:${NC}"
    echo ""
    
    if [ -n "$category" ]; then
        echo -e "${YELLOW}Category: $category${NC}"
        jq -r --arg cat "$category" '.languages[] | select(.category == $cat) | "  \(.name) (\(.category))"' "$CONFIG_FILE" | sort
    else
        jq -r '.languages[] | "  \(.name) (\(.category))"' "$CONFIG_FILE" | sort
    fi
    
    echo ""
    total=$(jq '.languages | length' "$CONFIG_FILE")
    echo "Total: $total languages"
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

# Function to check runtime availability
check_runtime() {
    local lang_name="$1"
    local lang_info="$2"
    
    local run_cmd=$(echo "$lang_info" | jq -r '.runCommand')
    local compile_cmd=$(echo "$lang_info" | jq -r '.compileCommand')
    local install_guide=$(echo "$lang_info" | jq -r '.installGuide')
    
    # Check compile command if it exists
    if [ "$compile_cmd" != "null" ] && [ -n "$compile_cmd" ]; then
        local compiler=$(extract_command "$compile_cmd")
        if ! command_exists "$compiler"; then
            echo -e "${RED}Error: $lang_name compiler '$compiler' not found.${NC}"
            echo -e "${YELLOW}Please install $lang_name to run this example.${NC}"
            if [ "$install_guide" != "null" ]; then
                echo "Installation guide: $install_guide"
            fi
            return 1
        fi
    fi
    
    # Check run command
    local runner=$(extract_command "$run_cmd")
    # Skip checking for relative paths (like ./hello)
    if [[ ! "$runner" =~ ^\. ]]; then
        if ! command_exists "$runner"; then
            echo -e "${RED}Error: $lang_name runtime '$runner' not found.${NC}"
            echo -e "${YELLOW}Please install $lang_name to run this example.${NC}"
            if [ "$install_guide" != "null" ]; then
                echo "Installation guide: $install_guide"
            fi
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
    
    # Replace {file} placeholder with base filename (since we're in work_dir)
    compile_cmd="${compile_cmd//\{file\}/$base_file}"
    
    echo -e "${YELLOW}Compiling $lang_name...${NC}"
    
    # Execute compile command in the work directory
    cd "$work_dir"
    if eval "$compile_cmd" 2>&1; then
        echo -e "${GREEN}Compilation successful.${NC}"
        cd - > /dev/null
        return 0
    else
        echo -e "${RED}Compilation failed for $lang_name${NC}"
        cd - > /dev/null
        return 1
    fi
}

# Function to run a language
run_language() {
    local lang_name="$1"
    
    echo -e "${BLUE}Running $lang_name...${NC}"
    
    # Get language info
    local lang_info=$(get_language_info "$lang_name")
    
    if [ -z "$lang_info" ]; then
        echo -e "${RED}Error: Language '$lang_name' not found in configuration.${NC}"
        echo "Use '$0 --list' to see available languages."
        return 1
    fi
    
    # Extract language details
    local file_path=$(echo "$lang_info" | jq -r '.file')
    local run_cmd=$(echo "$lang_info" | jq -r '.runCommand')
    local category=$(echo "$lang_info" | jq -r '.category')
    
    # Check if file exists
    if [ ! -f "$file_path" ]; then
        echo -e "${RED}Error: Source file '$file_path' not found.${NC}"
        return 1
    fi
    
    # Check runtime availability
    if ! check_runtime "$lang_name" "$lang_info"; then
        return 1
    fi
    
    # Create temporary work directory
    mkdir -p "$TEMP_DIR"
    local work_dir="$TEMP_DIR/$lang_name"
    mkdir -p "$work_dir"
    
    # Copy source file to work directory
    local file_dir=$(dirname "$file_path")
    cp -r "$file_dir"/* "$work_dir/" 2>/dev/null || true
    
    # Compile if needed
    if ! compile_language "$lang_name" "$lang_info" "$work_dir"; then
        rm -rf "$work_dir"
        return 1
    fi
    
    # Get the base filename
    local base_file=$(basename "$file_path")
    
    # Replace {file} placeholder with base filename (since we're in work_dir)
    run_cmd="${run_cmd//\{file\}/$base_file}"
    
    # Execute run command
    echo -e "${YELLOW}Output:${NC}"
    cd "$work_dir"
    
    if eval "$run_cmd" 2>&1; then
        local exit_code=$?
        cd - > /dev/null
        rm -rf "$work_dir"
        echo ""
        echo -e "${GREEN}✓ $lang_name executed successfully${NC}"
        return $exit_code
    else
        local exit_code=$?
        cd - > /dev/null
        rm -rf "$work_dir"
        echo ""
        echo -e "${RED}✗ $lang_name execution failed${NC}"
        return $exit_code
    fi
}

# Function to run all languages
run_all_languages() {
    local category="$1"
    
    echo -e "${BLUE}Running all languages${NC}"
    if [ -n "$category" ]; then
        echo -e "${BLUE}Category: $category${NC}"
    fi
    echo ""
    
    local total=0
    local success=0
    local failed=0
    
    # Get list of languages
    local languages
    if [ -n "$category" ]; then
        languages=$(jq -r --arg cat "$category" '.languages[] | select(.category == $cat) | .name' "$CONFIG_FILE")
    else
        languages=$(jq -r '.languages[].name' "$CONFIG_FILE")
    fi
    
    # Run each language
    while IFS= read -r lang; do
        ((total++))
        echo "----------------------------------------"
        if run_language "$lang"; then
            ((success++))
        else
            ((failed++))
        fi
        echo ""
    done <<< "$languages"
    
    # Summary
    echo "========================================"
    echo -e "${BLUE}Summary:${NC}"
    echo "  Total: $total"
    echo -e "  ${GREEN}Success: $success${NC}"
    echo -e "  ${RED}Failed: $failed${NC}"
}

# Main script
main() {
    check_jq
    check_config
    
    # Parse arguments
    if [ $# -eq 0 ]; then
        usage
    fi
    
    case "$1" in
        -h|--help)
            usage
            ;;
        --list)
            if [ -n "$2" ]; then
                list_languages "$2"
            else
                list_languages
            fi
            ;;
        --category)
            if [ -z "$2" ]; then
                echo -e "${RED}Error: --category requires a category name${NC}"
                exit 1
            fi
            if [ "$3" = "--all" ]; then
                # Run all languages in category
                run_all_languages "$2"
            elif [ -n "$3" ]; then
                # Run specific language in category
                run_language "$3"
            else
                # List category
                list_languages "$2"
            fi
            ;;
        --all)
            run_all_languages
            ;;
        *)
            # Run specific language
            run_language "$1"
            ;;
    esac
    
    # Cleanup
    rm -rf "$TEMP_DIR"
}

# Run main function
main "$@"
