# Ruby Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

Ruby 是一種動態、開源的程式語言，注重簡潔性和生產力。由日本程式設計師松本行弘（Yukihiro Matsumoto）於 1995 年創建，Ruby 的設計哲學強調「程式設計師的快樂」，語法優雅且易於閱讀。Ruby on Rails 框架使其在 Web 開發領域廣受歡迎。

## 安裝說明

### macOS
```bash
# macOS 通常預裝 Ruby，但版本可能較舊
# 使用 Homebrew 安裝最新版本
brew install ruby

# 或使用 rbenv 管理多個 Ruby 版本
brew install rbenv
rbenv install 3.2.0
rbenv global 3.2.0
```

### Linux
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install ruby-full

# Fedora
sudo dnf install ruby

# Arch Linux
sudo pacman -S ruby

# 或使用 rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-installer | bash
```

### Windows
從官網下載 RubyInstaller：https://rubyinstaller.org/

## 執行說明

### 直接執行
```bash
ruby hello.rb
```

### 預期輸出
```
Hello, World!
```

## 語法說明

- `puts`: Ruby 的內建方法，用於輸出文字並自動添加換行
- `print`: 另一個輸出方法，不會自動添加換行
- 字串可以使用單引號 `'` 或雙引號 `"` 包圍
- 雙引號字串支援字串插值（string interpolation）
- 註解使用 `#` 符號

## 官方文檔

- 官方網站：https://www.ruby-lang.org/
- 官方文檔：https://ruby-doc.org/
- Ruby 指南：https://www.ruby-lang.org/en/documentation/

## 版本資訊

此範例適用於 Ruby 2.0 或更高版本（建議使用 Ruby 3.0+）
