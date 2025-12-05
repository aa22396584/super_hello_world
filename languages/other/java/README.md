# Java Hello World

## 語言簡介

Java 是一種物件導向的程式語言，由 Sun Microsystems（現為 Oracle）於 1995 年發布。Java 的設計理念是 "Write Once, Run Anywhere"（一次編寫，到處執行），透過 Java 虛擬機器（JVM）實現跨平台特性。

## 特點

- 物件導向程式設計
- 強型別語言
- 自動記憶體管理（垃圾回收）
- 豐富的標準函式庫
- 跨平台執行

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝
brew install openjdk

# 或下載 Oracle JDK
# https://www.oracle.com/java/technologies/downloads/
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install default-jdk
```

### Windows
下載並安裝 JDK：
https://www.oracle.com/java/technologies/downloads/

## 編譯和執行

```bash
# 編譯 Java 程式（生成 .class 檔案）
javac Hello.java

# 執行編譯後的程式（注意：使用類別名稱，不是檔案名稱）
java Hello
```

## 程式碼說明

- `public class Hello`: 定義一個公開的類別，類別名稱必須與檔案名稱相同
- `public static void main(String[] args)`: Java 程式的進入點
- `System.out.println()`: 輸出文字並換行

## 官方文檔

https://docs.oracle.com/en/java/
