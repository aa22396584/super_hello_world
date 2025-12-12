# F# Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

F# 是一個函數式優先的程式語言，運行在 .NET 平台上。它結合了函數式程式設計的簡潔性和 .NET 生態系統的強大功能。

## 安裝說明

### macOS
```bash
brew install dotnet-sdk
```

### Linux (Ubuntu/Debian)
```bash
wget https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh
```

### Windows
下載並安裝 [.NET SDK](https://dotnet.microsoft.com/download)

## 執行方式

### 方法 1: 使用 dotnet
```bash
dotnet fsi hello.fs
```

### 方法 2: 編譯後執行
```bash
fsharpc hello.fs
mono hello.exe
```

## 程式碼說明

- `printfn` - F# 的格式化輸出函數，自動添加換行符
- F# 使用 `//` 作為單行註解

## 官方文檔

- [F# 官方網站](https://fsharp.org/)
- [F# 文檔](https://docs.microsoft.com/en-us/dotnet/fsharp/)
