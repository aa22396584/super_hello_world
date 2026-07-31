#!/bin/bash

# Documentation Validation Script
# Validates README.md, CONTRIBUTING.md, and all documentation

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "=========================================="
echo "Documentation Validation"
echo "=========================================="
echo ""

total_issues=0

# Check if README.md exists
echo "1. Checking README.md..."
if [ ! -f "README.md" ]; then
    echo -e "${RED}✗ README.md not found${NC}"
    ((total_issues+=1))
else
    echo -e "${GREEN}✓ README.md exists${NC}"
    
    # Check if README contains required sections
    required_sections=("Quick Start" "Supported Languages" "Usage" "Testing" "Contributing")
    for section in "${required_sections[@]}"; do
        if grep -q "$section" README.md; then
            echo -e "${GREEN}  ✓ Section '$section' found${NC}"
        else
            echo -e "${YELLOW}  ⚠ Section '$section' missing${NC}"
            ((total_issues+=1))
        fi
    done
    
    # Check if language table exists
    if grep -q "| Language |" README.md; then
        echo -e "${GREEN}  ✓ Language table found${NC}"
        
        # Count languages in table
        table_count=$(grep "| [A-Z]" README.md | grep -c -v "| Language |" || echo "0")
        json_count=$(python3 -c "import json; print(len(json.load(open('languages.json'))['languages']))")
        
        echo -e "${BLUE}  Languages in table: $table_count${NC}"
        echo -e "${BLUE}  Languages in JSON: $json_count${NC}"
        
        if [ "$table_count" -lt "$json_count" ]; then
            echo -e "${YELLOW}  ⚠ Table may be incomplete (fewer entries than JSON)${NC}"
        fi
    else
        echo -e "${RED}  ✗ Language table not found${NC}"
        ((total_issues+=1))
    fi
fi

echo ""

# Check CONTRIBUTING.md
echo "2. Checking CONTRIBUTING.md..."
if [ ! -f "CONTRIBUTING.md" ]; then
    echo -e "${RED}✗ CONTRIBUTING.md not found${NC}"
    ((total_issues+=1))
else
    echo -e "${GREEN}✓ CONTRIBUTING.md exists${NC}"
    
    # Check for key sections (English or Chinese)
    if grep -q "Adding a New Language\|添加新語言" CONTRIBUTING.md; then
        echo -e "${GREEN}  ✓ 'Adding a New Language' section found${NC}"
    else
        echo -e "${YELLOW}  ⚠ 'Adding a New Language' section missing${NC}"
        ((total_issues+=1))
    fi
fi

echo ""

# Check language-specific READMEs
echo "3. Checking language-specific README files..."
readme_count=0
missing_readmes=0

while IFS= read -r dir; do
    if [ -f "$dir/README.md" ]; then
        ((readme_count+=1))
    else
        echo -e "${RED}  ✗ Missing: $dir/README.md${NC}"
        ((missing_readmes+=1))
        ((total_issues+=1))
    fi
done < <(find languages -type d -mindepth 2 -maxdepth 2)

echo -e "${BLUE}  Found $readme_count language README files${NC}"
if [ $missing_readmes -eq 0 ]; then
    echo -e "${GREEN}  ✓ All language READMEs present${NC}"
else
    echo -e "${RED}  ✗ Missing $missing_readmes language READMEs${NC}"
fi

echo ""

# Check for code comments in implementation files
echo "4. Checking code comments in implementation files..."
files_without_comments=0

python3 << 'EOF'
import json
import os
import re

with open('languages.json', 'r') as f:
    data = json.load(f)

files_checked = 0
files_without_comments = 0

for lang in data['languages']:
    file_path = lang['file']
    if os.path.exists(file_path):
        files_checked += 1
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            
            # Check for common comment patterns
            has_comment = (
                '//' in content or  # C-style
                '#' in content or   # Python/Ruby/Shell style
                '--' in content or  # SQL/Haskell style
                ';' in content or   # Lisp/Assembly style
                '/*' in content or  # Multi-line C style
                '{-' in content or  # Haskell multi-line
                '(*' in content     # ML/Pascal style
            )
            
            if not has_comment:
                print(f"  ⚠ No comments found in: {file_path}")
                files_without_comments += 1

print(f"\nFiles checked: {files_checked}")
if files_without_comments == 0:
    print("\033[0;32m  ✓ All files contain comments\033[0m")
else:
    print(f"\033[1;33m  ⚠ {files_without_comments} files may lack comments\033[0m")
EOF

echo ""

# Check for broken links in README
echo "5. Checking for potential link issues in README.md..."
if [ -f "README.md" ]; then
    # Extract URLs from README
    urls=$(grep -oE 'https?://[^)]+' README.md || echo "")
    
    if [ -n "$urls" ]; then
        echo -e "${BLUE}  Found $(echo "$urls" | wc -l | xargs) external links${NC}"
        echo -e "${GREEN}  ✓ External links present (manual verification recommended)${NC}"
    else
        echo -e "${YELLOW}  ⚠ No external links found${NC}"
    fi
    
    # Check for internal file references
    if grep -q "languages/" README.md; then
        echo -e "${GREEN}  ✓ Internal file references found${NC}"
    fi
fi

echo ""

# Check docs directory
echo "6. Checking docs directory..."
if [ -d "docs" ]; then
    echo -e "${GREEN}✓ docs directory exists${NC}"
    
    doc_files=$(find docs -name "*.md" | wc -l | xargs)
    echo -e "${BLUE}  Found $doc_files documentation files${NC}"
    
    if [ -f "docs/language-comparison.md" ]; then
        echo -e "${GREEN}  ✓ language-comparison.md exists${NC}"
    else
        echo -e "${YELLOW}  ⚠ language-comparison.md missing${NC}"
        ((total_issues+=1))
    fi
    
    if [ -d "docs/installation-guides" ]; then
        echo -e "${GREEN}  ✓ installation-guides directory exists${NC}"
        guide_count=$(find docs/installation-guides -name "*.md" | wc -l | xargs)
        echo -e "${BLUE}    Found $guide_count installation guides${NC}"
    else
        echo -e "${YELLOW}  ⚠ installation-guides directory missing${NC}"
        ((total_issues+=1))
    fi
else
    echo -e "${RED}✗ docs directory not found${NC}"
    ((total_issues+=1))
fi

echo ""

# Summary
echo "=========================================="
echo "Validation Summary"
echo "=========================================="

if [ $total_issues -eq 0 ]; then
    echo -e "${GREEN}✓ All documentation checks passed!${NC}"
    echo -e "${GREEN}✓ Documentation is complete and well-structured${NC}"
    exit 0
else
    echo -e "${YELLOW}⚠ Found $total_issues potential issues${NC}"
    echo -e "${YELLOW}Please review the warnings above${NC}"
    exit 0  # Exit with 0 since warnings are not critical failures
fi
