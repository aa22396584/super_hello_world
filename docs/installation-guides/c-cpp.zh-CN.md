# C/C++ 安装指南

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C 和 C++ 是功能强大的低层编程语言。要编译和运行 C/C++ 程序，需要 GCC 或 Clang 等编译器。

## macOS

### 使用 Xcode Command Line Tools（推荐）
```bash
# 安装 Xcode Command Line Tools（包含 clang, gcc）
xcode-select --install
```

会安装：
- `clang`：Apple 的 C/C++ 编译器
- `gcc`：GNU C 编译器（在 macOS 上实际上是 clang 的别名）
- `g++`：GNU C++ 编译器（在 macOS 上实际上是 clang++ 的别名）

### 使用 Homebrew
```bash
# 安装 GCC
brew install gcc

# 会安装 gcc-13、g++-13（版本可能不同）
```

### 验证安装
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# 安装 build-essential（包含 gcc、g++、make）
sudo apt update
sudo apt install build-essential

# 可选：安装 clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# 安装 Development Tools 组
sudo dnf groupinstall "Development Tools"

# 或单独安装
sudo dnf install gcc gcc-c++ make

# 可选：安装 clang
sudo dnf install clang
```

### Arch Linux
```bash
# 安装 base-devel 组
sudo pacman -S base-devel

# 可选：安装 clang
sudo pacman -S clang
```

### 验证安装
```bash
gcc --version
g++ --version
make --version
```

## Windows

### 使用 MinGW-w64（推荐）
1. 从 [winlibs.com](https://winlibs.com/) 下载 MinGW-w64  
2. 解压到 `C:\mingw64`  
3. 将 `C:\mingw64\bin` 加入 PATH：  
   - 右键 “This PC” → Properties → Advanced system settings  
   - Environment Variables → 编辑 PATH  
   - 新增：`C:\mingw64\bin`

### 使用 MSYS2（需要类 Unix 环境推荐）
1. 从 [msys2.org](https://www.msys2.org/) 下载并安装 MSYS2  
2. 打开 MSYS2 终端并运行：
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. 将 `C:\msys64\mingw64\bin` 加入 PATH

### 使用 Visual Studio
1. 从 [visualstudio.microsoft.com](https://visualstudio.microsoft.com/) 下载 Visual Studio Community  
2. 安装时选择 “Desktop development with C++”  
3. 将安装 MSVC 编译器

### 使用 Windows Package Manager（winget）
```powershell
winget install -e --id GnuWin32.Make
```

### 使用 Chocolatey
```powershell
choco install mingw
```

### 验证安装
```powershell
gcc --version
g++ --version
```

## 运行 Hello World

### C
```bash
# 进入 C 目录
cd languages/compiled/c

# 编译程序
gcc hello.c -o hello

# 运行程序
./hello
```

### C++
```bash
# 进入 C++ 目录
cd languages/compiled/cpp

# 编译程序
g++ hello.cpp -o hello

# 运行程序
./hello
```

## 官方文档

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

