# Panduan Instalasi C/C++

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C dan C++ adalah bahasa pemrograman tingkat rendah yang kuat. Untuk mengompilasi dan menjalankan program C/C++, Anda memerlukan kompiler seperti GCC atau Clang.

## macOS

### Menggunakan Xcode Command Line Tools (Disarankan)
```bash
# Pasang Xcode Command Line Tools (termasuk clang, gcc)
xcode-select --install
```

Ini memasang:
- `clang`: kompiler C/C++ dari Apple
- `gcc`: kompiler C GNU (di macOS hanyalah alias ke clang)
- `g++`: kompiler C++ GNU (di macOS hanyalah alias ke clang++)

### Menggunakan Homebrew
```bash
# Pasang GCC
brew install gcc

# Ini memasang gcc-13, g++-13 (versi bisa berbeda)
```

### Verifikasi instalasi
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# Pasang build-essential (termasuk gcc, g++, make)
sudo apt update
sudo apt install build-essential

# Opsional: pasang clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# Pasang grup Development Tools
sudo dnf groupinstall "Development Tools"

# Atau pasang satu per satu
sudo dnf install gcc gcc-c++ make

# Opsional: pasang clang
sudo dnf install clang
```

### Arch Linux
```bash
# Pasang grup base-devel
sudo pacman -S base-devel

# Opsional: pasang clang
sudo pacman -S clang
```

### Verifikasi instalasi
```bash
gcc --version
g++ --version
make --version
```

## Windows

### Menggunakan MinGW-w64 (Disarankan)
1. Unduh MinGW-w64 dari [winlibs.com](https://winlibs.com/)  
2. Ekstrak ke `C:\mingw64`  
3. Tambahkan `C:\mingw64\bin` ke PATH:  
   - Klik kanan “This PC” → Properties → Advanced system settings  
   - Environment Variables → Edit PATH  
   - Tambah: `C:\mingw64\bin`

### Menggunakan MSYS2 (Direkomendasikan jika butuh lingkungan mirip Unix)
1. Unduh dan pasang MSYS2 dari [msys2.org](https://www.msys2.org/)  
2. Buka terminal MSYS2 dan jalankan:
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. Tambahkan `C:\msys64\mingw64\bin` ke PATH

### Menggunakan Visual Studio
1. Unduh Visual Studio Community dari [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)  
2. Saat instalasi, pilih “Desktop development with C++”  
3. Ini akan memasang kompiler MSVC

### Menggunakan Windows Package Manager (winget)
```powershell
winget install -e --id GnuWin32.Make
```

### Menggunakan Chocolatey
```powershell
choco install mingw
```

### Verifikasi instalasi
```powershell
gcc --version
g++ --version
```

## Menjalankan Hello World

### C
```bash
# Masuk ke direktori C
cd languages/compiled/c

# Kompilasi program
gcc hello.c -o hello

# Jalankan program
./hello
```

### C++
```bash
# Masuk ke direktori C++
cd languages/compiled/cpp

# Kompilasi program
g++ hello.cpp -o hello

# Jalankan program
./hello
```

## Dokumentasi resmi

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

