# JavaScript Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

JavaScript 是一種高階、解釋型的程式語言，最初為網頁瀏覽器設計，現在也廣泛用於伺服器端開發（Node.js）。它是 Web 開發的核心技術之一，與 HTML 和 CSS 並列為網頁內容的三大基礎技術。

## 安裝說明

### macOS
```bash
# 使用 Homebrew 安裝 Node.js（包含 JavaScript 執行環境）
brew install node

# 或從官網下載安裝包
# https://nodejs.org/
```

### Linux
```bash
# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Fedora
sudo dnf install nodejs

# Arch Linux
sudo pacman -S nodejs npm
```

### Windows
從官網下載安裝包：https://nodejs.org/

建議安裝 LTS（長期支援）版本

## 執行說明

### 使用 Node.js 執行
```bash
node hello.js
```

### 預期輸出
```
Hello, World!
```

## 語法說明

- `console.log()`: JavaScript 的內建函數，用於輸出訊息到控制台
- 字串可以使用單引號 `'`、雙引號 `"` 或反引號 `` ` `` 包圍
- 註解使用 `//` 表示單行註解，`/* */` 表示多行註解
- JavaScript 語句通常以分號 `;` 結尾（雖然在某些情況下可以省略）

## 官方文檔

- Node.js 官網：https://nodejs.org/
- MDN JavaScript 文檔：https://developer.mozilla.org/en-US/docs/Web/JavaScript
- JavaScript 規範：https://tc39.es/ecma262/

## 版本資訊

此範例適用於所有現代 JavaScript 版本（ES5+）和 Node.js 環境
