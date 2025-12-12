# Ada Language - Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Ada 是一種結構化、靜態型別的程式語言，由美國國防部於 1980 年代開發。Ada 以其強大的型別系統和可靠性而聞名，廣泛用於關鍵任務系統和嵌入式系統。

## 安裝說明

### macOS
```bash
brew install gcc
# GCC 包含 GNAT Ada 編譯器
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get install gnat
```

### Linux (Fedora/RHEL)
```bash
sudo dnf install gcc-gnat
```

## 編譯說明

```bash
gnatmake hello.adb
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

- [Ada Programming Language](https://www.adaic.org/)
- [Learn Ada](https://learn.adacore.com/)
