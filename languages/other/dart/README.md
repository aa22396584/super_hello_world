# Dart Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Dart 是由 Google 開發的程式語言，於 2011 年發布。Dart 是 Flutter 框架的基礎語言，用於建立跨平台的行動、網頁和桌面應用程式。

## 特點

- 物件導向程式設計
- 強型別系統（支援型別推斷）
- 即時編譯（JIT）和預先編譯（AOT）
- 優秀的開發工具
- Flutter 框架支援

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝
brew tap dart-lang/dart
brew install dart
```

### Linux
```bash
# 使用 apt 安裝
sudo apt update
sudo apt install apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
sudo apt update
sudo apt install dart
```

### Windows
下載並安裝 Dart SDK：
https://dart.dev/get-dart

## 執行

```bash
# 直接執行 Dart 程式
dart hello.dart

# 或編譯成原生執行檔
dart compile exe hello.dart -o hello
./hello
```

## 程式碼說明

- `void main()`: 程式進入點
- `print()`: 輸出文字到控制台

## 官方文檔

https://dart.dev/guides
