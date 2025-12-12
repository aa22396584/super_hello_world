# COBOL Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

COBOL (Common Business-Oriented Language) 是一種專為商業應用設計的程式語言，由 Grace Hopper 等人於 1959 年開發。COBOL 至今仍廣泛用於銀行、保險和政府系統。

## 特點

- 接近自然語言的語法
- 優秀的檔案處理能力
- 適合商業資料處理
- 高度可讀性
- 長期穩定性

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝 GnuCOBOL
brew install gnu-cobol
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install gnucobol
```

### Windows
下載並安裝 GnuCOBOL：
https://sourceforge.net/projects/gnucobol/

## 編譯和執行

```bash
# 編譯 COBOL 程式
cobc -x hello.cob -o hello

# 執行
./hello
```

## 程式碼說明

- `IDENTIFICATION DIVISION`: 識別部門，定義程式名稱
- `PROGRAM-ID`: 程式識別碼
- `PROCEDURE DIVISION`: 程序部門，包含執行邏輯
- `DISPLAY`: 輸出語句
- `STOP RUN`: 結束程式

## 官方文檔

https://gnucobol.sourceforge.io/
