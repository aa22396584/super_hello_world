# คู่มือติดตั้ง C/C++

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C และ C++ เป็นภาษาระดับล่างที่ทรงพลัง การคอมไพล์และรันโปรแกรม C/C++ ต้องใช้คอมไพล์เลอร์อย่าง GCC หรือ Clang

## macOS

### ใช้ Xcode Command Line Tools (แนะนำ)
```bash
# ติดตั้ง Xcode Command Line Tools (มี clang, gcc)
xcode-select --install
```

จะติดตั้ง:
- `clang` ตัวคอมไพล์ C/C++ ของ Apple
- `gcc` คอมไพล์เลอร์ C ของ GNU (บน macOS เป็น alias ของ clang)
- `g++` คอมไพล์เลอร์ C++ ของ GNU (บน macOS เป็น alias ของ clang++)

### ใช้ Homebrew
```bash
# ติดตั้ง GCC
brew install gcc

# จะได้ gcc-13, g++-13 (เวอร์ชันอาจต่างกัน)
```

### ตรวจสอบการติดตั้ง
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# ติดตั้ง build-essential (มี gcc, g++, make)
sudo apt update
sudo apt install build-essential

# ตัวเลือก: ติดตั้ง clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# ติดตั้งกลุ่ม Development Tools
sudo dnf groupinstall "Development Tools"

# หรือเลือกติดตั้งรายตัว
sudo dnf install gcc gcc-c++ make

# ตัวเลือก: ติดตั้ง clang
sudo dnf install clang
```

### Arch Linux
```bash
# ติดตั้งกลุ่ม base-devel
sudo pacman -S base-devel

# ตัวเลือก: ติดตั้ง clang
sudo pacman -S clang
```

### ตรวจสอบการติดตั้ง
```bash
gcc --version
g++ --version
make --version
```

## Windows

### ใช้ MinGW-w64 (แนะนำ)
1. ดาวน์โหลด MinGW-w64 จาก [winlibs.com](https://winlibs.com/)  
2. แตกไฟล์ไปที่ `C:\mingw64`  
3. เพิ่ม `C:\mingw64\bin` เข้า PATH:  
   - คลิกขวา “This PC” → Properties → Advanced system settings  
   - Environment Variables → แก้ไข PATH  
   - เพิ่ม `C:\mingw64\bin`

### ใช้ MSYS2 (แนะนำถ้าต้องการสภาพแวดล้อมแบบ Unix)
1. ดาวน์โหลดและติดตั้ง MSYS2 จาก [msys2.org](https://www.msys2.org/)  
2. เปิดเทอร์มินัล MSYS2 แล้วรัน:
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. เพิ่ม `C:\msys64\mingw64\bin` เข้า PATH

### ใช้ Visual Studio
1. ดาวน์โหลด Visual Studio Community จาก [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)  
2. ตอนติดตั้งให้เลือก “Desktop development with C++”  
3. จะได้คอมไพล์เลอร์ MSVC

### ใช้ Windows Package Manager (winget)
```powershell
winget install -e --id GnuWin32.Make
```

### ใช้ Chocolatey
```powershell
choco install mingw
```

### ตรวจสอบการติดตั้ง
```powershell
gcc --version
g++ --version
```

## รัน Hello World

### C
```bash
# ไปที่โฟลเดอร์ C
cd languages/compiled/c

# คอมไพล์โปรแกรม
gcc hello.c -o hello

# รันโปรแกรม
./hello
```

### C++
```bash
# ไปที่โฟลเดอร์ C++
cd languages/compiled/cpp

# คอมไพล์โปรแกรม
g++ hello.cpp -o hello

# รันโปรแกรม
./hello
```

## เอกสารทางการ

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

