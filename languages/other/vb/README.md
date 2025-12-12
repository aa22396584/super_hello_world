# Visual Basic Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Visual Basic (VB) 是由 Microsoft 開發的程式語言，以其易學易用的特性著稱。現代版本稱為 Visual Basic .NET (VB.NET)，運行在 .NET 平台上。

## 特點

- 易於學習和使用
- 與 .NET 框架完全整合
- 強大的 IDE 支援（Visual Studio）
- 適合快速應用程式開發
- 豐富的類別庫

## 安裝

### Windows
下載並安裝 Visual Studio：
https://visualstudio.microsoft.com/

或安裝 .NET SDK：
https://dotnet.microsoft.com/download

### macOS / Linux
```bash
# 安裝 .NET SDK
# macOS
brew install dotnet

# Linux (Ubuntu/Debian)
sudo apt update
sudo apt install dotnet-sdk-7.0
```

## 編譯和執行

```bash
# 使用 .NET CLI 編譯
vbc hello.vb

# 執行
mono hello.exe

# 或使用 .NET Core
dotnet run
```

## 程式碼說明

- `Module Hello`: 定義模組
- `Sub Main()`: 主程序（程式進入點）
- `Console.WriteLine()`: 輸出文字並換行
- `End Sub` / `End Module`: 結束區塊

## 官方文檔

https://docs.microsoft.com/en-us/dotnet/visual-basic/
