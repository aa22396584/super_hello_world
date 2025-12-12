# C/C++ インストールガイド

[English](c-cpp.md) | [繁體中文](c-cpp.zh-TW.md) | [简体中文](c-cpp.zh-CN.md) | [日本語](c-cpp.ja.md) | [한국어](c-cpp.ko.md) | [Bahasa Indonesia](c-cpp.id.md) | [ไทย](c-cpp.th.md)

C と C++ は強力な低水準プログラミング言語です。C/C++ をコンパイルして実行するには GCC や Clang などのコンパイラが必要です。

## macOS

### Xcode Command Line Tools を使う（推奨）
```bash
# Xcode Command Line Tools をインストール（clang, gcc を含む）
xcode-select --install
```

インストールされるもの:
- `clang`：Apple の C/C++ コンパイラ
- `gcc`：GNU C コンパイラ（macOS では clang のエイリアス）
- `g++`：GNU C++ コンパイラ（macOS では clang++ のエイリアス）

### Homebrew を使う
```bash
# GCC をインストール
brew install gcc

# gcc-13, g++-13 などが入る（バージョンは異なる場合あり）
```

### インストール確認
```bash
gcc --version
g++ --version
clang --version
```

## Linux

### Ubuntu/Debian
```bash
# build-essential をインストール（gcc, g++, make を含む）
sudo apt update
sudo apt install build-essential

# オプション: clang
sudo apt install clang
```

### Fedora/RHEL/CentOS
```bash
# Development Tools グループをインストール
sudo dnf groupinstall "Development Tools"

# または個別に
sudo dnf install gcc gcc-c++ make

# オプション: clang
sudo dnf install clang
```

### Arch Linux
```bash
# base-devel グループをインストール
sudo pacman -S base-devel

# オプション: clang
sudo pacman -S clang
```

### インストール確認
```bash
gcc --version
g++ --version
make --version
```

## Windows

### MinGW-w64 を使う（推奨）
1. [winlibs.com](https://winlibs.com/) から MinGW-w64 をダウンロード  
2. `C:\mingw64` に展開  
3. `C:\mingw64\bin` を PATH に追加  
   - 「This PC」右クリック → Properties → Advanced system settings  
   - Environment Variables → PATH を編集  
   - `C:\mingw64\bin` を追加

### MSYS2 を使う（Unix ライクな環境が欲しい場合）
1. [msys2.org](https://www.msys2.org/) から MSYS2 をダウンロードしてインストール  
2. MSYS2 ターミナルで以下を実行:
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc
```
3. `C:\msys64\mingw64\bin` を PATH に追加

### Visual Studio を使う
1. [visualstudio.microsoft.com](https://visualstudio.microsoft.com/) から Visual Studio Community をダウンロード  
2. インストール時に「Desktop development with C++」を選択  
3. MSVC コンパイラがインストールされる

### Windows Package Manager（winget）
```powershell
winget install -e --id GnuWin32.Make
```

### Chocolatey
```powershell
choco install mingw
```

### インストール確認
```powershell
gcc --version
g++ --version
```

## Hello World を実行する

### C
```bash
# C ディレクトリへ移動
cd languages/compiled/c

# コンパイル
gcc hello.c -o hello

# 実行
./hello
```

### C++
```bash
# C++ ディレクトリへ移動
cd languages/compiled/cpp

# コンパイル
g++ hello.cpp -o hello

# 実行
./hello
```

## 公式ドキュメント

### C
- [C Reference](https://en.cppreference.com/w/c)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)
- [C Standard Library](https://en.cppreference.com/w/c/header)

### C++
- [C++ Reference](https://en.cppreference.com/w/cpp)
- [C++ Documentation](https://isocpp.org/)
- [Learn C++](https://www.learncpp.com/)

