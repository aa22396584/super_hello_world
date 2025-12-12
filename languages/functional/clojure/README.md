# Clojure Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Clojure 是一個運行在 JVM 上的現代 Lisp 方言，強調不可變性和函數式程式設計。它提供了強大的並發支援和與 Java 的互操作性。

## 安裝說明

### macOS
```bash
brew install clojure/tools/clojure
```

### Linux
```bash
curl -O https://download.clojure.org/install/linux-install-1.11.1.1182.sh
chmod +x linux-install-1.11.1.1182.sh
sudo ./linux-install-1.11.1.1182.sh
```

### Windows
使用 [Clojure CLI Tools](https://clojure.org/guides/install_clojure)

## 執行方式

```bash
clojure hello.clj
```

或使用 Java:
```bash
java -cp clojure.jar clojure.main hello.clj
```

## 程式碼說明

- `(println "Hello, World!")` - 使用 println 函數輸出字串
- Clojure 使用 `;` 作為單行註解
- 所有程式碼都是 S-表達式（括號表示法）

## 官方文檔

- [Clojure 官方網站](https://clojure.org/)
- [Clojure 文檔](https://clojure.org/reference/documentation)
