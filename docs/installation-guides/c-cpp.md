# C/C++ Installation Guide

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C and C++ are powerful, low-level programming languages. To compile and run C/C++ programs, you need a compiler like GCC or Clang.

## macOS

### Using Xcode Command Line Tools (Recommended)
```bash
# Install Xcode Command Line Tools (includes clang, gcc)
xcode-select --install
```

This installs:
- `clang` - Apple's C/C++ compiler
- `gcc` - GNU C compiler (actually an alias to clang on macOS)
- `g++` - GNU C++ compiler (actually an alias to clang++ on macOS)

### Using Homebrew
```bash
# Install GCC
brew install gcc

# This installs gcc-13, g++-13 (version may vary)
```

### Verify Installation
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# Install build-essential package (includes gcc, g++, make)
sudo apt update
sudo apt install build-essential

# Optional: Install clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# Install Development Tools group
sudo dnf groupinstall "Development Tools"

# Or install individually
sudo dnf install gcc gcc-c++ make

# Optional: Install clang
sudo dnf install clang
```

### Arch Linux
```bash
# Install base-devel group
sudo pacman -S base-devel

# Optional: Install clang
sudo pacman -S clang
```

### Verify Installation
```bash
gcc --version
g++ --version
make --version
```

## Windows

### Using MinGW-w64 (Recommended)
1. Download MinGW-w64 from [winlibs.com](https://winlibs.com/)
2. Extract the archive to `C:\mingw64`
3. Add `C:\mingw64\bin` to PATH:
   - Right-click "This PC" → Properties → Advanced system settings
   - Environment Variables → Edit PATH
   - Add new entry: `C:\mingw64\bin`

### Using MSYS2 (Recommended for Unix-like environment)
1. Download and install MSYS2 from [msys2.org](https://www.msys2.org/)
2. Open MSYS2 terminal and run:
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. Add `C:\msys64\mingw64\bin` to PATH

### Using Visual Studio
1. Download Visual Studio Community from [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)
2. During installation, select "Desktop development with C++"
3. This installs MSVC compiler

### Using Windows Package Manager (winget)
```powershell
winget install -e --id GnuWin32.Make
```

### Using Chocolatey
```powershell
choco install mingw
```

### Verify Installation
```powershell
gcc --version
g++ --version
```

## Running Hello World

### C
```bash
# Navigate to the C directory
cd languages/compiled/c

# Compile the program
gcc hello.c -o hello

# Run the program
./hello
```

### C++
```bash
# Navigate to the C++ directory
cd languages/compiled/cpp

# Compile the program
g++ hello.cpp -o hello

# Run the program
./hello
```

## Official Documentation

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)
