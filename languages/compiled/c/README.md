# C Language - Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

C 是一種通用的程式語言，由 Dennis Ritchie 於 1972 年在貝爾實驗室開發。C 語言是許多現代程式語言的基礎，以其效率和對硬體的直接控制能力而聞名。

## 安裝說明

### macOS
```bash
# 使用 Xcode Command Line Tools
xcode-select --install
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install build-essential
```

### Linux (Fedora/RHEL)
```bash
sudo dnf install gcc
```

### Windows
下載並安裝 MinGW 或使用 WSL (Windows Subsystem for Linux)

## 編譯說明

```bash
gcc hello.c -o hello
```

## 執行說明

```bash
./hello
```

## 預期輸出

```
Hello, World!
```

## 官方文檔

- [C Reference](https://en.cppreference.com/w/c)
- [GNU GCC Documentation](https://gcc.gnu.org/onlinedocs/)
