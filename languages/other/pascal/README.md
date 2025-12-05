# Pascal Hello World

## 語言簡介

Pascal 是一種結構化程式語言，由 Niklaus Wirth 於 1970 年設計。Pascal 最初是為了教學目的而創建，強調良好的程式設計習慣和結構化程式設計。

## 特點

- 強型別系統
- 清晰的語法結構
- 適合教學
- 良好的可讀性
- 支援結構化程式設計

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝 Free Pascal
brew install fpc
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install fp-compiler
```

### Windows
下載並安裝 Free Pascal：
https://www.freepascal.org/download.html

## 編譯和執行

```bash
# 編譯 Pascal 程式
fpc hello.pas

# 執行
./hello
```

## 程式碼說明

- `program Hello`: 定義程式名稱
- `begin...end`: 程式主體區塊
- `WriteLn()`: 輸出文字並換行
- `.`: 程式結束標記

## 官方文檔

https://www.freepascal.org/docs.html
