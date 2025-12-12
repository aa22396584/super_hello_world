# Forth Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Forth 是一種堆疊導向的程式語言，由 Charles Moore 於 1970 年代創建。Forth 使用逆波蘭表示法（RPN），具有極簡的語法和強大的擴展性。

## 特點

- 堆疊導向架構
- 逆波蘭表示法
- 極簡語法
- 互動式開發
- 低階系統控制能力

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝 Gforth
brew install gforth
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install gforth
```

### Windows
下載並安裝 Gforth：
https://www.complang.tuwien.ac.at/forth/gforth/

## 執行

```bash
# 使用 Gforth 執行
gforth hello.fth
```

## 程式碼說明

- `\`: 註解符號
- `: hello ... ;`: 定義一個名為 hello 的詞（word）
- `."`: 輸出字串
- `CR`: 輸出換行（Carriage Return）
- `bye`: 退出 Forth 系統

## 官方文檔

https://www.complang.tuwien.ac.at/forth/gforth/Docs-html/
