# Fortran Hello World

## 語言簡介

Fortran (Formula Translation) 是最早的高階程式語言之一，由 IBM 於 1957 年開發。Fortran 特別適合科學計算、數值分析和高效能運算。

## 特點

- 優秀的數值計算效能
- 陣列操作強大
- 廣泛用於科學和工程領域
- 持續演進（最新版本 Fortran 2018）
- 豐富的數學函式庫

## 安裝

### macOS
```bash
# 使用 Homebrew 安裝 GFortran
brew install gcc
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install gfortran
```

### Windows
下載並安裝 MinGW-w64：
https://www.mingw-w64.org/

## 編譯和執行

```bash
# 編譯 Fortran 程式
gfortran hello.f90 -o hello

# 執行
./hello
```

## 程式碼說明

- `program hello`: 定義程式區塊
- `implicit none`: 要求明確宣告所有變數
- `print *`: 格式化輸出語句
- `end program`: 程式結束

## 官方文檔

https://fortran-lang.org/learn/
