# PureScript Hello World

## 語言簡介

PureScript 是一種強型別的純函數式程式語言，編譯成 JavaScript。PureScript 受 Haskell 啟發，提供了強大的型別系統和函數式程式設計特性。

## 特點

- 純函數式程式設計
- 強大的型別系統
- 型別推斷
- 編譯成可讀的 JavaScript
- 優秀的工具鏈

## 安裝

### macOS / Linux / Windows
```bash
# 使用 npm 安裝
npm install -g purescript spago

# 或使用 yarn
yarn global add purescript spago
```

## 編譯和執行

```bash
# 初始化專案（首次）
spago init

# 將 hello.purs 放入 src/ 目錄
# 編譯並執行
spago run
```

或直接編譯：
```bash
# 編譯
purs compile hello.purs

# 執行（需要 Node.js）
node output/Main/index.js
```

## 程式碼說明

- `module Main where`: 定義主模組
- `import`: 匯入模組
- `main :: Effect Unit`: 型別簽名
- `log`: 輸出到控制台

## 官方文檔

https://book.purescript.org/
