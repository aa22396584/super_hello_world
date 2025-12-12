# Kotlin Language - Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Kotlin 是由 JetBrains 開發的程式語言，於 2011 年發布。Kotlin 與 Java 完全互通，是 Android 應用開發的官方語言，以其簡潔性和安全性而受到歡迎。

## 安裝說明

### macOS / Linux
```bash
# 使用 SDKMAN
curl -s "https://get.sdkman.io" | bash
sdk install kotlin
```

### macOS (使用 Homebrew)
```bash
brew install kotlin
```

## 編譯說明

```bash
kotlinc hello.kt -include-runtime -d hello.jar
```

## 執行說明

```bash
java -jar hello.jar
```

或直接執行：
```bash
kotlin hello.kt
```

## 預期輸出

```
Hello, World!
```

## 官方文檔

- [Kotlin Documentation](https://kotlinlang.org/docs/home.html)
- [Kotlin Reference](https://kotlinlang.org/docs/reference/)
