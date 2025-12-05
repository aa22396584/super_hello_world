# Design Document

## Overview

本專案採用簡潔的檔案系統結構來組織 50+ 種程式語言的 Hello World 實作。設計重點在於可擴展性、易於維護，以及提供統一的執行和測試介面。每種語言的實作將獨立存放，並透過中央配置檔案和自動化腳本進行管理。

## Architecture

### High-Level Structure

```
multi-language-hello-world/
├── README.md                    # 主文檔，包含所有語言列表和使用說明
├── languages.json               # 語言配置檔案（元數據）
├── run.sh                       # 統一執行腳本
├── test.sh                      # 自動化測試腳本
├── CONTRIBUTING.md              # 貢獻指南（添加新語言的模板）
├── languages/                   # 所有語言實作目錄
│   ├── compiled/               # 編譯型語言
│   │   ├── c/
│   │   │   ├── hello.c
│   │   │   └── README.md
│   │   ├── cpp/
│   │   ├── rust/
│   │   ├── go/
│   │   └── ...
│   ├── interpreted/            # 解釋型語言
│   │   ├── python/
│   │   │   ├── hello.py
│   │   │   └── README.md
│   │   ├── ruby/
│   │   ├── javascript/
│   │   └── ...
│   ├── functional/             # 函數式語言
│   │   ├── haskell/
│   │   ├── ocaml/
│   │   ├── erlang/
│   │   └── ...
│   ├── scripting/              # 腳本語言
│   │   ├── bash/
│   │   ├── powershell/
│   │   ├── perl/
│   │   └── ...
│   └── other/                  # 其他類型語言
│       ├── sql/
│       ├── prolog/
│       └── ...
└── docs/                       # 額外文檔
    ├── installation-guides/    # 各語言安裝指南
    └── language-comparison.md  # 語言比較表
```

### Design Principles

1. **單一職責**: 每個語言實作只負責輸出 "Hello, World!"
2. **一致性**: 所有語言遵循相同的目錄結構和命名規範
3. **可發現性**: 透過配置檔案和文檔讓使用者輕鬆找到所需語言
4. **自動化**: 測試和執行流程完全自動化
5. **可擴展性**: 添加新語言只需遵循模板，無需修改核心邏輯

## Components and Interfaces

### 1. Language Configuration File (languages.json)

存儲所有語言的元數據，作為系統的中央配置。

**Schema:**
```json
{
  "languages": [
    {
      "name": "Python",
      "category": "interpreted",
      "file": "languages/interpreted/python/hello.py",
      "extension": ".py",
      "runCommand": "python3 {file}",
      "compileCommand": null,
      "version": "3.x",
      "officialDocs": "https://www.python.org/doc/",
      "installGuide": "docs/installation-guides/python.md"
    },
    {
      "name": "C",
      "category": "compiled",
      "file": "languages/compiled/c/hello.c",
      "extension": ".c",
      "runCommand": "./hello",
      "compileCommand": "gcc {file} -o hello",
      "version": "C11",
      "officialDocs": "https://en.cppreference.com/",
      "installGuide": "docs/installation-guides/c.md"
    }
  ]
}
```

**Interface:**
- 提供語言查詢功能
- 支援按類別篩選
- 返回執行和編譯指令

### 2. Language Implementation Files

每種語言的 Hello World 實作。

**Standard Format:**
```
languages/{category}/{language}/
├── hello.{ext}      # 主程式檔案
└── README.md        # 語言特定說明
```

**Code Requirements:**
- 必須包含註解說明語法
- 輸出必須是 "Hello, World!" 或可接受的變體
- 程式碼應該是該語言的慣用寫法

**Example (Python):**
```python
# Python Hello World
# Python 使用 print() 函數來輸出文字

print("Hello, World!")
```

### 3. Unified Runner Script (run.sh)

提供統一的執行介面。

**Interface:**
```bash
./run.sh <language-name>
./run.sh --list              # 列出所有語言
./run.sh --category compiled # 列出特定類別
./run.sh --all               # 執行所有語言
```

**Functionality:**
- 讀取 languages.json 獲取執行指令
- 檢查語言運行環境是否安裝
- 對於編譯型語言，先編譯再執行
- 捕獲並顯示輸出
- 錯誤處理和友善的錯誤訊息

### 4. Test Script (test.sh)

自動化測試所有語言實作。

**Interface:**
```bash
./test.sh                    # 測試所有語言
./test.sh <language-name>    # 測試特定語言
./test.sh --category compiled # 測試特定類別
```

**Test Logic:**
1. 遍歷 languages.json 中的所有語言
2. 執行每個語言的程式
3. 驗證輸出是否匹配預期（"Hello, World!" 或變體）
4. 生成測試報告
5. 返回失敗的語言列表

**Output Format:**
```
Testing 50 languages...
✓ Python: Hello, World!
✓ JavaScript: Hello, World!
✗ C: Compilation failed
✓ Rust: Hello, World!
...
Summary: 49/50 passed
Failed: C (Compilation failed)
```

### 5. Main README.md

專案的主要文檔和入口點。

**Sections:**
1. **Project Overview**: 專案簡介
2. **Supported Languages**: 完整語言列表（按字母排序）
3. **Quick Start**: 快速開始指南
4. **Usage**: 如何執行特定語言
5. **Testing**: 如何運行測試
6. **Contributing**: 如何添加新語言
7. **Language Table**: 包含以下欄位的表格
   - Language Name
   - Category
   - File Path
   - Run Command
   - Official Docs Link

**Table Format:**
```markdown
| Language | Category | File | Run Command | Docs |
|----------|----------|------|-------------|------|
| C | Compiled | languages/compiled/c/hello.c | `gcc hello.c -o hello && ./hello` | [Link](https://en.cppreference.com/) |
| Python | Interpreted | languages/interpreted/python/hello.py | `python3 hello.py` | [Link](https://www.python.org/doc/) |
```

### 6. CONTRIBUTING.md

提供添加新語言的指南和模板。

**Template Structure:**
```markdown
## Adding a New Language

1. Create directory: `languages/{category}/{language}/`
2. Add implementation file: `hello.{ext}`
3. Add README.md with:
   - Language description
   - Installation instructions
   - Execution instructions
4. Update languages.json
5. Test your implementation
6. Submit pull request

## Code Template

[Provide template with comments]

## Checklist

- [ ] Code includes explanatory comments
- [ ] Output is exactly "Hello, World!"
- [ ] README.md is complete
- [ ] languages.json is updated
- [ ] Tests pass
```

## Data Models

### Language Metadata

```typescript
interface Language {
  name: string;              // 語言名稱
  category: LanguageCategory; // 語言類別
  file: string;              // 檔案路徑
  extension: string;         // 副檔名
  runCommand: string;        // 執行指令（{file} 為佔位符）
  compileCommand: string | null; // 編譯指令（如果需要）
  version: string;           // 語言版本
  officialDocs: string;      // 官方文檔連結
  installGuide: string;      // 安裝指南路徑
}

type LanguageCategory = 
  | "compiled" 
  | "interpreted" 
  | "functional" 
  | "scripting" 
  | "other";
```

### Test Result

```typescript
interface TestResult {
  language: string;
  passed: boolean;
  output: string;
  expected: string;
  error?: string;
  executionTime: number; // 毫秒
}

interface TestSummary {
  total: number;
  passed: number;
  failed: number;
  results: TestResult[];
}
```

## Error Handling

### Runtime Not Installed

當語言運行環境未安裝時：
```
Error: Python runtime not found
Please install Python 3.x to run this example.
Installation guide: docs/installation-guides/python.md
Official website: https://www.python.org/downloads/
```

### Compilation Failure

當編譯失敗時：
```
Error: Compilation failed for C
Command: gcc hello.c -o hello
Error output: [compiler error message]
```

### Unexpected Output

當輸出不符合預期時：
```
Test failed for Java
Expected: "Hello, World!"
Got: "Hello World"
Note: Missing comma and exclamation mark
```

### Missing Configuration

當 languages.json 中缺少語言配置時：
```
Error: Language 'Kotlin' not found in configuration
Available languages: [list]
To add this language, please update languages.json
```

## Testing Strategy

### Unit Testing

不適用於此專案（無複雜邏輯需要單元測試）

### Integration Testing

**Test Scope:**
1. 每個語言實作的輸出驗證
2. 執行腳本的功能測試
3. 配置檔案的完整性檢查

**Test Cases:**
- 所有語言都能成功執行（在運行環境已安裝的情況下）
- 輸出符合預期格式
- 編譯型語言能正確編譯
- 錯誤處理正確顯示友善訊息
- languages.json 中的所有語言都有對應的實作檔案

**Test Execution:**
```bash
# 完整測試套件
./test.sh --all

# 僅測試已安裝運行環境的語言
./test.sh --available-only

# 生成詳細報告
./test.sh --verbose --output report.txt
```

### Manual Testing

**Checklist:**
- [ ] README.md 中的表格完整且準確
- [ ] 每個語言的 README.md 包含正確的安裝和執行說明
- [ ] 所有連結都有效
- [ ] 程式碼註解清晰易懂
- [ ] 專案結構符合設計規範

## Implementation Notes

### Language Selection (50+ Languages)

**Compiled Languages (15):**
C, C++, C#, Rust, Go, Swift, Kotlin, Objective-C, D, Nim, Crystal, Zig, V, Odin, Ada

**Interpreted Languages (12):**
Python, Ruby, PHP, Perl, Lua, R, Julia, Tcl, Groovy, Smalltalk, APL, J

**Functional Languages (8):**
Haskell, OCaml, F#, Erlang, Elixir, Clojure, Racket, Scheme, Common Lisp

**Scripting Languages (8):**
JavaScript, TypeScript, Bash, Zsh, PowerShell, Fish, Awk, Sed

**JVM Languages (5):**
Java, Scala, Kotlin (also in compiled), Groovy (also in interpreted), Clojure (also in functional)

**Other/Special Purpose (10+):**
SQL, Prolog, Assembly (x86), Fortran, COBOL, Pascal, MATLAB, Dart, Visual Basic, Forth, Lisp, ML, Elm, PureScript

### Execution Priority

1. 先實作最常用的 20 種語言
2. 再添加中等流行度的 20 種語言
3. 最後補充較少使用但具代表性的語言

### Compatibility Considerations

- Shell 腳本應同時支援 macOS 和 Linux
- Windows 使用者可透過 WSL 或 Git Bash 執行
- 提供 PowerShell 版本的執行腳本作為替代方案
