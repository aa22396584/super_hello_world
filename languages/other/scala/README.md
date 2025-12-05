# Scala Hello World

## 語言簡介

Scala 是一種運行在 JVM 上的多範式程式語言，結合了物件導向和函數式程式設計。由 Martin Odersky 於 2003 年創建，Scala 的名稱來自 "Scalable Language"。

## 特點

- 結合物件導向和函數式程式設計
- 強大的型別系統
- 與 Java 完全互通
- 簡潔的語法
- 支援並行程式設計

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝
brew install scala
```

### Linux
```bash
# 使用 SDKMAN 安裝
curl -s "https://get.sdkman.io" | bash
sdk install scala
```

### Windows
下載並安裝：
https://www.scala-lang.org/download/

## 編譯和執行

```bash
# 編譯 Scala 程式
scalac hello.scala

# 執行編譯後的程式
scala Hello
```

或直接執行（不編譯）：
```bash
scala hello.scala
```

## 程式碼說明

- `object Hello`: 定義一個單例物件
- `def main(args: Array[String]): Unit`: 主方法定義
- `println()`: 輸出文字並換行

## 官方文檔

https://docs.scala-lang.org/
