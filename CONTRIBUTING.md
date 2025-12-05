# 貢獻指南 (Contributing Guide)

感謝您對本專案的興趣！本指南將幫助您為 Multi-Language Hello World 專案添加新的程式語言實作。

## 目錄

- [添加新語言的步驟](#添加新語言的步驟)
- [程式碼模板和範例](#程式碼模板和範例)
- [更新 languages.json](#更新-languagesjson)
- [檢查清單](#檢查清單)
- [提交貢獻](#提交貢獻)

## 添加新語言的步驟

### 1. 確定語言類別

首先，確定您要添加的語言屬於哪個類別：

- **compiled**: 編譯型語言（如 C, C++, Rust, Go）
- **interpreted**: 解釋型語言（如 Python, Ruby, JavaScript）
- **functional**: 函數式語言（如 Haskell, OCaml, Erlang）
- **scripting**: 腳本語言（如 Bash, PowerShell, AWK）
- **other**: 其他特殊用途語言（如 SQL, Prolog, Assembly）

### 2. 建立目錄結構

在對應的類別目錄下建立新語言的目錄：

```bash
mkdir -p languages/{category}/{language-name}
```

例如，添加 Python：
```bash
mkdir -p languages/interpreted/python
```

### 3. 建立 Hello World 程式

在語言目錄中建立主程式檔案，檔名格式為 `hello.{extension}`：

```bash
touch languages/{category}/{language-name}/hello.{ext}
```

### 4. 撰寫程式碼

在程式檔案中實作 Hello World，確保：
- 輸出 "Hello, World!"（包含逗號和驚嘆號）
- 包含清晰的註解說明語法
- 使用該語言的慣用寫法

### 5. 建立 README.md

在同一目錄下建立 `README.md`，包含以下內容：
- 語言簡介
- 安裝說明（macOS, Linux, Windows）
- 執行說明
- 語法說明
- 官方文檔連結
- 版本資訊

### 6. 更新 languages.json

在專案根目錄的 `languages.json` 檔案中添加新語言的配置（詳見下方說明）。

### 7. 測試您的實作

執行測試腳本確保您的實作正確：

```bash
# 測試單一語言
./test.sh {language-name}

# 或執行完整測試
./test.sh --all
```

## 程式碼模板和範例

### 解釋型語言範例（Python）

**檔案：`languages/interpreted/python/hello.py`**

```python
# Python Hello World
# Python 使用 print() 函數來輸出文字到標準輸出
# print() 是 Python 的內建函數，不需要導入任何模組

print("Hello, World!")
```

### 編譯型語言範例（C）

**檔案：`languages/compiled/c/hello.c`**

```c
// C Hello World
// C 使用 printf() 函數來輸出文字
// 需要包含 stdio.h 標頭檔

#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

### README.md 模板

```markdown
# {Language Name} Hello World

## 語言簡介

{簡短介紹該語言的歷史、特點和用途}

## 安裝說明

### macOS
\```bash
{macOS 安裝指令}
\```

### Linux
\```bash
{Linux 安裝指令}
\```

### Windows
{Windows 安裝說明}

## 執行說明

### 直接執行（解釋型語言）
\```bash
{執行指令}
\```

### 編譯後執行（編譯型語言）
\```bash
# 編譯
{編譯指令}

# 執行
{執行指令}
\```

### 預期輸出
\```
Hello, World!
\```

## 語法說明

- {語法要點 1}
- {語法要點 2}
- {語法要點 3}

## 官方文檔

- 官方網站：{URL}
- 官方文檔：{URL}
- 教學資源：{URL}

## 版本資訊

此範例適用於 {語言名稱} {版本號}
```

## 更新 languages.json

在 `languages.json` 的 `languages` 陣列中添加新語言的配置物件。

### JSON Schema

```json
{
  "name": "語言名稱",
  "category": "語言類別",
  "file": "檔案路徑",
  "extension": "副檔名",
  "runCommand": "執行指令",
  "compileCommand": "編譯指令或 null",
  "version": "版本資訊",
  "officialDocs": "官方文檔 URL",
  "installGuide": "安裝指南路徑"
}
```

### 欄位說明

- **name** (string, 必填): 語言的正式名稱（如 "Python", "C++", "JavaScript"）
- **category** (string, 必填): 語言類別，必須是以下之一：
  - `"compiled"` - 編譯型語言
  - `"interpreted"` - 解釋型語言
  - `"functional"` - 函數式語言
  - `"scripting"` - 腳本語言
  - `"other"` - 其他類型
- **file** (string, 必填): 程式檔案的相對路徑（從專案根目錄開始）
- **extension** (string, 必填): 檔案副檔名（包含點號，如 ".py", ".c"）
- **runCommand** (string, 必填): 執行程式的指令
  - 使用 `{file}` 作為檔案路徑的佔位符
  - 例如：`"python3 {file}"` 或 `"./hello"`
- **compileCommand** (string 或 null, 必填): 編譯指令
  - 解釋型語言設為 `null`
  - 編譯型語言使用 `{file}` 作為佔位符
  - 例如：`"gcc {file} -o hello"` 或 `null`
- **version** (string, 必填): 支援的語言版本（如 "3.6+", "C11", "ES5+"）
- **officialDocs** (string, 必填): 官方文檔的 URL
- **installGuide** (string, 必填): 安裝指南的路徑（如 "docs/installation-guides/python.md"）

### 範例配置

#### 解釋型語言（Python）

```json
{
  "name": "Python",
  "category": "interpreted",
  "file": "languages/interpreted/python/hello.py",
  "extension": ".py",
  "runCommand": "python3 {file}",
  "compileCommand": null,
  "version": "3.6+",
  "officialDocs": "https://docs.python.org/3/",
  "installGuide": "docs/installation-guides/python.md"
}
```

#### 編譯型語言（C）

```json
{
  "name": "C",
  "category": "compiled",
  "file": "languages/compiled/c/hello.c",
  "extension": ".c",
  "runCommand": "./hello",
  "compileCommand": "gcc {file} -o hello",
  "version": "C11",
  "officialDocs": "https://en.cppreference.com/w/c",
  "installGuide": "docs/installation-guides/c.md"
}
```

#### 函數式語言（Haskell）

```json
{
  "name": "Haskell",
  "category": "functional",
  "file": "languages/functional/haskell/hello.hs",
  "extension": ".hs",
  "runCommand": "runhaskell {file}",
  "compileCommand": "ghc {file} -o hello",
  "version": "8.0+",
  "officialDocs": "https://www.haskell.org/documentation/",
  "installGuide": "docs/installation-guides/haskell.md"
}
```

### 添加到 languages.json 的步驟

1. 開啟 `languages.json` 檔案
2. 在 `languages` 陣列中找到合適的位置（建議按字母順序排列）
3. 添加新語言的 JSON 物件
4. 確保 JSON 格式正確（注意逗號和括號）
5. 儲存檔案

## 檢查清單

在提交您的貢獻之前，請確認以下項目：

### 程式碼檢查

- [ ] 程式碼能正確輸出 "Hello, World!"（包含逗號和驚嘆號）
- [ ] 程式碼包含清晰的註解，解釋語法和功能
- [ ] 程式碼遵循該語言的慣用寫法和最佳實踐
- [ ] 程式碼檔案命名正確：`hello.{extension}`
- [ ] 程式碼檔案放置在正確的目錄：`languages/{category}/{language}/`

### 文檔檢查

- [ ] README.md 已建立並包含所有必要章節：
  - [ ] 語言簡介
  - [ ] 安裝說明（macOS, Linux, Windows）
  - [ ] 執行說明
  - [ ] 語法說明
  - [ ] 官方文檔連結
  - [ ] 版本資訊
- [ ] README.md 中的安裝指令已驗證可用
- [ ] README.md 中的執行指令已驗證可用
- [ ] 所有連結都有效且指向正確的資源

### languages.json 檢查

- [ ] 已在 `languages.json` 中添加新語言配置
- [ ] 所有必填欄位都已填寫：
  - [ ] name
  - [ ] category
  - [ ] file
  - [ ] extension
  - [ ] runCommand
  - [ ] compileCommand（或 null）
  - [ ] version
  - [ ] officialDocs
  - [ ] installGuide
- [ ] 檔案路徑正確且與實際檔案位置一致
- [ ] runCommand 和 compileCommand 格式正確（使用 `{file}` 佔位符）
- [ ] JSON 格式正確（無語法錯誤）

### 測試檢查

- [ ] 已在本地執行 `./run.sh {language-name}` 並成功輸出 "Hello, World!"
- [ ] 已執行 `./test.sh {language-name}` 並通過測試
- [ ] 如果是編譯型語言，編譯過程無錯誤
- [ ] 如果語言運行環境未安裝，錯誤訊息清晰友善

### 專案結構檢查

- [ ] 目錄結構符合專案規範
- [ ] 檔案命名符合專案規範
- [ ] 沒有添加不必要的檔案（如編譯產物、臨時檔案）

## 提交貢獻

### 1. Fork 專案

在 GitHub 上 fork 本專案到您的帳號。

### 2. 建立分支

```bash
git checkout -b add-{language-name}
```

### 3. 提交變更

```bash
git add languages/{category}/{language}/
git add languages.json
git commit -m "Add {Language Name} implementation"
```

### 4. 推送到您的 Fork

```bash
git push origin add-{language-name}
```

### 5. 建立 Pull Request

在 GitHub 上建立 Pull Request，並在描述中說明：
- 添加的語言名稱
- 語言類別
- 已完成的檢查清單項目
- 任何特殊說明或注意事項

### Pull Request 標題格式

```
Add {Language Name} implementation
```

### Pull Request 描述範例

```markdown
## 變更說明

添加 {Language Name} 的 Hello World 實作

## 檢查清單

- [x] 程式碼正確輸出 "Hello, World!"
- [x] 包含清晰的註解
- [x] README.md 完整
- [x] languages.json 已更新
- [x] 測試通過

## 測試結果

\```
$ ./test.sh {language-name}
✓ {Language Name}: Hello, World!
\```

## 其他說明

{任何額外的說明或注意事項}
```

## 常見問題

### Q: 如何決定語言應該放在哪個類別？

A: 參考以下準則：
- **compiled**: 需要編譯步驟才能執行的語言
- **interpreted**: 直接由解釋器執行的語言
- **functional**: 以函數式程式設計為主要範式的語言
- **scripting**: 主要用於腳本編寫的語言
- **other**: 不適合上述類別的特殊用途語言

如果語言可以歸類到多個類別，選擇最能代表其主要特性的類別。

### Q: 輸出格式必須完全一致嗎？

A: 是的，輸出必須是 "Hello, World!"（包含逗號、空格和驚嘆號）。這是為了確保測試腳本能正確驗證所有實作。

### Q: 如果語言有多種執行方式怎麼辦？

A: 選擇最常用或最簡單的執行方式。您可以在 README.md 中說明其他執行方式。

### Q: 需要添加安裝指南嗎？

A: 在 README.md 中應該包含基本的安裝說明。詳細的安裝指南可以稍後添加到 `docs/installation-guides/` 目錄。

### Q: 如何處理需要特殊環境的語言？

A: 在 README.md 中清楚說明環境需求，並在 languages.json 的 installGuide 中提供詳細指引。

## 程式碼風格指南

### 註解風格

- 使用該語言的標準註解語法
- 第一行註解說明這是 Hello World 程式
- 後續註解解釋關鍵語法元素
- 保持註解簡潔明瞭

### 程式碼風格

- 遵循該語言的官方風格指南
- 使用慣用的縮排方式（空格或 Tab）
- 保持程式碼簡潔，避免不必要的複雜性
- 如果語言支援多種寫法，選擇最易理解的方式

## 需要幫助？

如果您在貢獻過程中遇到任何問題，歡迎：

1. 查看現有的語言實作作為參考
2. 在 GitHub Issues 中提問
3. 參考專案的 README.md 和 design.md

感謝您的貢獻！🎉
