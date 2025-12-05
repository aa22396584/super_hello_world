#!/bin/bash

# Configuration Integrity Validation Script
# Validates languages.json against actual file structure

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=========================================="
echo "Configuration Integrity Validation"
echo "=========================================="
echo ""

# Check if languages.json exists
if [ ! -f "languages.json" ]; then
    echo -e "${RED}✗ languages.json not found${NC}"
    exit 1
fi

echo -e "${GREEN}✓ languages.json found${NC}"
echo ""

# Parse JSON and validate each language
total_languages=0
missing_files=0
invalid_paths=0
invalid_commands=0

echo "Validating language implementations..."
echo ""

# Extract language data using Python (more reliable than jq for complex JSON)
python3 << 'EOF'
import json
import os
import sys

with open('languages.json', 'r') as f:
    data = json.load(f)

total = len(data['languages'])
missing = []
invalid_paths = []
invalid_commands = []

for lang in data['languages']:
    name = lang['name']
    file_path = lang['file']
    run_cmd = lang['runCommand']
    compile_cmd = lang.get('compileCommand')
    
    # Check if file exists
    if not os.path.exists(file_path):
        missing.append(f"{name}: {file_path}")
    
    # Check if path format is correct
    if not file_path.startswith('languages/'):
        invalid_paths.append(f"{name}: {file_path}")
    
    # Check if commands contain placeholder
    if run_cmd and '{file}' not in run_cmd and file_path.split('/')[-1] not in run_cmd:
        # Some commands don't use {file} placeholder (e.g., Java uses class name)
        pass
    
    if compile_cmd and '{file}' not in compile_cmd and file_path.split('/')[-1] not in compile_cmd:
        # Some compile commands might not use {file}
        pass

print(f"Total languages: {total}")
print(f"Missing files: {len(missing)}")
print(f"Invalid paths: {len(invalid_paths)}")

if missing:
    print("\n\033[0;31mMissing implementation files:\033[0m")
    for item in missing:
        print(f"  ✗ {item}")

if invalid_paths:
    print("\n\033[1;33mInvalid path formats:\033[0m")
    for item in invalid_paths:
        print(f"  ⚠ {item}")

# Check for README files
print("\nChecking README files...")
readme_missing = []
for lang in data['languages']:
    name = lang['name']
    file_path = lang['file']
    dir_path = os.path.dirname(file_path)
    readme_path = os.path.join(dir_path, 'README.md')
    
    if not os.path.exists(readme_path):
        readme_missing.append(f"{name}: {readme_path}")

if readme_missing:
    print(f"\n\033[1;33mMissing README files: {len(readme_missing)}\033[0m")
    for item in readme_missing:
        print(f"  ⚠ {item}")
else:
    print(f"\033[0;32m✓ All README files present\033[0m")

# Check for installation guides
print("\nChecking installation guides...")
guide_missing = []
for lang in data['languages']:
    name = lang['name']
    guide_path = lang.get('installGuide', '')
    
    if guide_path and not os.path.exists(guide_path):
        guide_missing.append(f"{name}: {guide_path}")

if guide_missing:
    print(f"\n\033[1;33mMissing installation guides: {len(guide_missing)}\033[0m")
    for item in guide_missing:
        print(f"  ⚠ {item}")
else:
    print(f"\033[0;32m✓ All installation guides present\033[0m")

# Summary
print("\n==========================================")
print("Validation Summary")
print("==========================================")
if len(missing) == 0 and len(invalid_paths) == 0:
    print(f"\033[0;32m✓ All {total} language configurations are valid\033[0m")
    sys.exit(0)
else:
    print(f"\033[0;31m✗ Found issues in configuration\033[0m")
    sys.exit(1)
EOF

validation_result=$?

echo ""
if [ $validation_result -eq 0 ]; then
    echo -e "${GREEN}=========================================="
    echo "✓ Configuration validation PASSED"
    echo -e "==========================================${NC}"
else
    echo -e "${RED}=========================================="
    echo "✗ Configuration validation FAILED"
    echo -e "==========================================${NC}"
fi

exit $validation_result
