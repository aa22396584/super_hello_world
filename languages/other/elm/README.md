# Elm Hello World

## 語言簡介

Elm 是一種函數式程式語言，專門用於建立網頁前端應用程式。Elm 編譯成 JavaScript，強調無執行時錯誤和優秀的開發體驗。

## 特點

- 純函數式程式設計
- 強型別系統
- 無執行時錯誤
- 友善的編譯器錯誤訊息
- 時間旅行除錯

## 安裝

### macOS
```bash
# 使用 npm 安裝
npm install -g elm
```

### Linux
```bash
# 使用 npm 安裝
npm install -g elm
```

### Windows
下載並安裝：
https://guide.elm-lang.org/install/elm.html

## 編譯和執行

```bash
# 編譯成 HTML
elm make hello.elm

# 開啟 index.html 查看結果
open index.html

# 或使用 elm reactor 開發伺服器
elm reactor
# 然後在瀏覽器開啟 http://localhost:8000
```

## 程式碼說明

- `module Main exposing (main)`: 定義模組
- `import Html exposing (text)`: 匯入 HTML 模組
- `main`: 應用程式的主要輸出
- `text`: 建立文字節點

## 官方文檔

https://guide.elm-lang.org/
