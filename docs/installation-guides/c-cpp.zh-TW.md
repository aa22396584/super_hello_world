# C/C++ 安裝指南

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C 和 C++ 是功能強大的低階程式語言。要編譯與執行 C/C++ 程式，需要 GCC 或 Clang 等編譯器。

## macOS

### 使用 Xcode Command Line Tools（推薦）
```bash
# 安裝 Xcode Command Line Tools（含 clang, gcc）
xcode-select --install
```

會安裝：
- `clang`：Apple 的 C/C++ 編譯器
- `gcc`：GNU C 編譯器（在 macOS 上實際是 clang 的別名）
- `g++`：GNU C++ 編譯器（在 macOS 上實際是 clang++ 的別名）

### 使用 Homebrew
```bash
# 安裝 GCC
brew install gcc

# 會安裝 gcc-13、g++-13（版本可能不同）
```

### 驗證安裝
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# 安裝 build-essential（含 gcc、g++、make）
sudo apt update
sudo apt install build-essential

# 可選：安裝 clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# 安裝 Development Tools 群組
sudo dnf groupinstall "Development Tools"

# 或個別安裝
sudo dnf install gcc gcc-c++ make

# 可選：安裝 clang
sudo dnf install clang
```

### Arch Linux
```bash
# 安裝 base-devel 群組
sudo pacman -S base-devel

# 可選：安裝 clang
sudo pacman -S clang
```

### 驗證安裝
```bash
gcc --version
g++ --version
make --version
```

## Windows

### 使用 MinGW-w64（推薦）
1. 從 [winlibs.com](https://winlibs.com/) 下載 MinGW-w64  
2. 解壓至 `C:\mingw64`  
3. 將 `C:\mingw64\bin` 加入 PATH：  
   - 右鍵「This PC」→ Properties → Advanced system settings  
   - Environment Variables → 編輯 PATH  
   - 新增：`C:\mingw64\bin`

### 使用 MSYS2（想要類 Unix 環境推薦）
1. 從 [msys2.org](https://www.msys2.org/) 下載並安裝 MSYS2  
2. 開啟 MSYS2 終端並執行：
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. 將 `C:\msys64\mingw64\bin` 加入 PATH

### 使用 Visual Studio
1. 從 [visualstudio.microsoft.com](https://visualstudio.microsoft.com/) 下載 Visual Studio Community  
2. 安裝時勾選「Desktop development with C++」  
3. 會安裝 MSVC 編譯器

### 使用 Windows Package Manager（winget）
```powershell
winget install -e --id GnuWin32.Make
```

### 使用 Chocolatey
```powershell
choco install mingw
```

### 驗證安裝
```powershell
gcc --version
g++ --version
```

## 執行 Hello World

### C
```bash
# 切換到 C 目錄
cd languages/compiled/c

# 編譯程式
gcc hello.c -o hello

# 執行程式
./hello
```

### C++
```bash
# 切換到 C++ 目錄
cd languages/compiled/cpp

# 編譯程式
g++ hello.cpp -o hello

# 執行程式
./hello
```

## 官方文件

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

