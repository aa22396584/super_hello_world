# Common Lisp Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Common Lisp 是一個強大的多範式程式語言，具有豐富的標準函式庫和強大的巨集系統。它是 Lisp 家族中最廣泛使用的方言之一。

## 安裝說明

### macOS
```bash
brew install sbcl
# 或
brew install clisp
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install sbcl
# 或
sudo apt-get install clisp
```

### Windows
下載並安裝 [SBCL](http://www.sbcl.org/platform-table.html) 或 [CLISP](https://clisp.sourceforge.io/)

## 執行方式

### 使用 SBCL
```bash
sbcl --script hello.lisp
```

### 使用 CLISP
```bash
clisp hello.lisp
```

## 程式碼說明

- `(format t "Hello, World!~%")` - 使用 format 函數輸出
- `t` - 表示輸出到標準輸出
- `~%` - 換行符
- Common Lisp 使用 `;` 或 `;;;` 作為註解

## 官方文檔

- [Common Lisp 官方網站](https://common-lisp.net/)
- [Common Lisp HyperSpec](http://www.lispworks.com/documentation/HyperSpec/Front/)
