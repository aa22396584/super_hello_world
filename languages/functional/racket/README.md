# Racket Hello World

## 語言簡介

Racket 是一個通用的程式語言，也是 Scheme 的方言。它提供了強大的巨集系統和豐富的標準函式庫，適合教學和研究。

## 安裝說明

### macOS
```bash
brew install --cask racket
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install racket
```

### Windows
下載並安裝 [Racket](https://racket-lang.org/download/)

## 執行方式

```bash
racket hello.rkt
```

## 程式碼說明

- `#lang racket` - 指定使用 Racket 語言
- `(displayln "Hello, World!")` - 使用 displayln 函數輸出字串並換行
- Racket 使用 `;` 作為單行註解

## 官方文檔

- [Racket 官方網站](https://racket-lang.org/)
- [Racket 文檔](https://docs.racket-lang.org/)
