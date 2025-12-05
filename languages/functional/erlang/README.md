# Erlang Hello World

## 語言簡介

Erlang 是一個並發導向的函數式程式語言，專為構建可擴展和容錯的分散式系統而設計。廣泛應用於電信和即時系統。

## 安裝說明

### macOS
```bash
brew install erlang
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install erlang
```

### Windows
下載並安裝 [Erlang/OTP](https://www.erlang.org/downloads)

## 執行方式

### 方法 1: 編譯並執行
```bash
erlc hello.erl
erl -noshell -s hello main -s init stop
```

### 方法 2: 使用 escript
創建 hello 文件（無副檔名）並執行 `escript hello`

## 程式碼說明

- `-module(hello)` - 定義模組名稱
- `-export([main/0])` - 導出 main 函數，參數數量為 0
- `io:format` - 格式化輸出函數
- `~n` - 換行符

## 官方文檔

- [Erlang 官方網站](https://www.erlang.org/)
- [Erlang 文檔](https://www.erlang.org/docs)
