# Assembly Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Assembly（組合語言）是一種低階程式語言，與特定的電腦架構緊密相關。每條 Assembly 指令通常對應一條機器碼指令。這個範例使用 x86-64 架構和 NASM 組譯器。

## 特點

- 最接近硬體的程式語言
- 完全控制 CPU 和記憶體
- 高效能
- 平台相依
- 學習曲線陡峭

## 安裝

### macOS
```bash
# 安裝 NASM 組譯器
brew install nasm
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install nasm
```

### Windows
下載並安裝 NASM：
https://www.nasm.us/

## 編譯和執行

```bash
# 組譯成目的檔
nasm -f elf64 hello.asm -o hello.o

# 連結成可執行檔
ld hello.o -o hello

# 執行
./hello
```

注意：這個範例是為 Linux x86-64 系統設計的。在 macOS 或 Windows 上需要修改系統呼叫部分。

## 程式碼說明

- `section .data`: 資料段，存放常量
- `section .text`: 程式碼段
- `mov`: 移動資料指令
- `syscall`: 執行系統呼叫
- `rax, rdi, rsi, rdx`: 64 位元暫存器

## 官方文檔

- NASM: https://www.nasm.us/docs.php
- x86-64 參考: https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html
