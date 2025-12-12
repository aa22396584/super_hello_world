# OCaml Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

OCaml 是一個通用的函數式程式語言，具有強大的類型系統和模式匹配功能。它支援函數式、命令式和物件導向程式設計範式。

## 安裝說明

### macOS
```bash
brew install ocaml opam
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install ocaml opam
```

### Windows
使用 [OCaml for Windows](https://fdopen.github.io/opam-repository-mingw/)

## 執行方式

### 方法 1: 直接解釋執行
```bash
ocaml hello.ml
```

### 方法 2: 編譯後執行
```bash
ocamlc hello.ml -o hello
./hello
```

## 程式碼說明

- `let () = ...` - 定義一個單元類型的綁定，用於執行副作用
- `print_endline` - 標準函數，用於輸出字串並自動添加換行符

## 官方文檔

- [OCaml 官方網站](https://ocaml.org/)
- [OCaml 文檔](https://ocaml.org/docs)
