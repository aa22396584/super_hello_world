# Scheme Hello World

## 語言簡介

Scheme 是 Lisp 的一個簡潔方言，強調簡單性和優雅性。它是函數式程式設計教學中常用的語言。

## 安裝說明

### macOS
```bash
brew install mit-scheme
# 或
brew install guile
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install mit-scheme
# 或
sudo apt-get install guile-3.0
```

### Windows
下載並安裝 [MIT/GNU Scheme](https://www.gnu.org/software/mit-scheme/)

## 執行方式

### 使用 MIT Scheme
```bash
mit-scheme --quiet < hello.scm
```

### 使用 Guile
```bash
guile hello.scm
```

## 程式碼說明

- `(display "Hello, World!")` - 輸出字串（不換行）
- `(newline)` - 輸出換行符
- Scheme 使用 `;` 作為單行註解

## 官方文檔

- [Scheme 官方網站](https://www.scheme.org/)
- [MIT Scheme 文檔](https://www.gnu.org/software/mit-scheme/documentation/)
