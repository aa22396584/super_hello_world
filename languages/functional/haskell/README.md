# Haskell Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Haskell 是一個標準化的純函數式程式語言，具有非嚴格語義和強靜態類型。它以數學家 Haskell Curry 命名，廣泛應用於學術界和工業界。

## 安裝說明

### macOS
```bash
brew install ghc cabal-install
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install ghc cabal-install
```

### Windows
下載並安裝 [Haskell Platform](https://www.haskell.org/platform/)

## 執行方式

### 方法 1: 直接解釋執行
```bash
runhaskell hello.hs
```

### 方法 2: 編譯後執行
```bash
ghc hello.hs -o hello
./hello
```

## 程式碼說明

- `main :: IO ()` - 定義 main 函數的類型簽名，表示它是一個 IO 動作，不返回值
- `main = putStrLn "Hello, World!"` - main 函數的實作，使用 putStrLn 輸出字串
- `putStrLn` - 標準函數，用於輸出字串並自動添加換行符

## 官方文檔

- [Haskell 官方網站](https://www.haskell.org/)
- [Learn You a Haskell](http://learnyouahaskell.com/)
- [Haskell Wiki](https://wiki.haskell.org/)
