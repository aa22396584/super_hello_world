# Prolog Hello World

## 語言簡介

Prolog (Programming in Logic) 是一種邏輯程式語言，由 Alain Colmerauer 於 1972 年創建。Prolog 特別適合用於人工智慧、自然語言處理和專家系統。

## 特點

- 基於邏輯和推理
- 宣告式程式設計
- 模式匹配和回溯
- 適合符號處理
- 內建統一（unification）機制

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝 SWI-Prolog
brew install swi-prolog
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install swi-prolog
```

### Windows
下載並安裝 SWI-Prolog：
https://www.swi-prolog.org/Download.html

## 執行

```bash
# 使用 SWI-Prolog 執行
swipl -s hello.pl

# 或使用 GNU Prolog
gprolog --consult-file hello.pl
```

## 程式碼說明

- `hello :- ...`: 定義一個名為 hello 的規則
- `write('Hello, World!')`: 輸出文字
- `nl`: 輸出換行
- `:- initialization(hello)`: 程式啟動時執行 hello
- `:- halt`: 執行完畢後退出

## 官方文檔

https://www.swi-prolog.org/pldoc/index.html
