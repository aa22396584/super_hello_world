# C/C++ 설치 가이드

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C와 C++은 강력한 저수준 프로그래밍 언어입니다. C/C++ 프로그램을 컴파일하고 실행하려면 GCC 또는 Clang과 같은 컴파일러가 필요합니다.

## macOS

### Xcode Command Line Tools 사용(권장)
```bash
# Xcode Command Line Tools 설치 (clang, gcc 포함)
xcode-select --install
```

설치되는 항목:
- `clang`: Apple의 C/C++ 컴파일러
- `gcc`: GNU C 컴파일러(맥에서는 실제로 clang의 별칭)
- `g++`: GNU C++ 컴파일러(맥에서는 실제로 clang++의 별칭)

### Homebrew 사용
```bash
# GCC 설치
brew install gcc

# gcc-13, g++-13 등이 설치됨(버전은 다를 수 있음)
```

### 설치 확인
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# build-essential 설치 (gcc, g++, make 포함)
sudo apt update
sudo apt install build-essential

# 선택: clang 설치
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# Development Tools 그룹 설치
sudo dnf groupinstall "Development Tools"

# 또는 개별 설치
sudo dnf install gcc gcc-c++ make

# 선택: clang 설치
sudo dnf install clang
```

### Arch Linux
```bash
# base-devel 그룹 설치
sudo pacman -S base-devel

# 선택: clang 설치
sudo pacman -S clang
```

### 설치 확인
```bash
gcc --version
g++ --version
make --version
```

## Windows

### MinGW-w64 사용(권장)
1. [winlibs.com](https://winlibs.com/)에서 MinGW-w64 다운로드  
2. `C:\mingw64`에 압축 해제  
3. `C:\mingw64\bin`을 PATH에 추가  
   - “This PC” 우클릭 → Properties → Advanced system settings  
   - Environment Variables → PATH 편집  
   - `C:\mingw64\bin` 추가

### MSYS2 사용(유닉스 유사 환경이 필요하면 권장)
1. [msys2.org](https://www.msys2.org/)에서 MSYS2 다운로드 후 설치  
2. MSYS2 터미널에서 실행:
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. `C:\msys64\mingw64\bin`을 PATH에 추가

### Visual Studio 사용
1. [visualstudio.microsoft.com](https://visualstudio.microsoft.com/)에서 Visual Studio Community 다운로드  
2. 설치 시 “Desktop development with C++” 선택  
3. MSVC 컴파일러가 설치됨

### Windows Package Manager(winget)
```powershell
winget install -e --id GnuWin32.Make
```

### Chocolatey
```powershell
choco install mingw
```

### 설치 확인
```powershell
gcc --version
g++ --version
```

## Hello World 실행

### C
```bash
# C 디렉터리로 이동
cd languages/compiled/c

# 컴파일
gcc hello.c -o hello

# 실행
./hello
```

### C++
```bash
# C++ 디렉터리로 이동
cd languages/compiled/cpp

# 컴파일
g++ hello.cpp -o hello

# 실행
./hello
```

## 공식 문서

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

