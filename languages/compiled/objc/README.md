# Objective-C Language - Hello World

## 語言簡介

Objective-C 是 C 語言的超集，加入了 Smalltalk 風格的訊息傳遞機制。在 Swift 出現之前，Objective-C 是 macOS 和 iOS 開發的主要語言。

## 安裝說明

### macOS
```bash
# Objective-C 已包含在 Xcode 中
xcode-select --install
```

### Linux
```bash
sudo apt-get install gobjc gnustep gnustep-devel
```

## 編譯說明

### macOS
```bash
clang -framework Foundation hello.m -o hello
```

### Linux
```bash
gcc `gnustep-config --objc-flags` hello.m -o hello `gnustep-config --base-libs`
```

## 執行說明

```bash
./hello
```

## 預期輸出

```
Hello, World!
```

## 官方文檔

- [Objective-C Programming Guide](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
