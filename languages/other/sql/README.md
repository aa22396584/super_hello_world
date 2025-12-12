# SQL Hello World

[English](../../../README.md) | [繁體中文](../../../README.zh-TW.md) | [简体中文](../../../README.zh-CN.md) | [日本語](../../../README.ja.md) | [한국어](../../../README.ko.md) | [Bahasa Indonesia](../../../README.id.md) | [ไทย](../../../README.th.md)


## 語言簡介

SQL (Structured Query Language) 是用於管理和操作關聯式資料庫的標準語言。SQL 不是通用程式語言，而是專門用於資料庫查詢和管理的領域特定語言。

## 特點

- 宣告式語言（描述想要什麼，而非如何做）
- 標準化（ANSI/ISO 標準）
- 廣泛支援（幾乎所有關聯式資料庫）
- 強大的資料查詢和操作能力

## 安裝

### macOS
```bash
# 安裝 SQLite（輕量級資料庫）
brew install sqlite

# 或安裝 PostgreSQL
brew install postgresql
```

### Linux (Ubuntu/Debian)
```bash
# 安裝 SQLite
sudo apt install sqlite3

# 或安裝 PostgreSQL
sudo apt install postgresql
```

### Windows
下載並安裝 SQLite 或其他資料庫系統：
https://www.sqlite.org/download.html

## 執行

```bash
# 使用 SQLite 執行
sqlite3 < hello.sql

# 或使用 PostgreSQL
psql -f hello.sql

# 或使用 MySQL
mysql < hello.sql
```

## 程式碼說明

- `SELECT`: 查詢語句，用於從資料庫中檢索資料
- `'Hello, World!'`: 字串常量
- `AS message`: 為輸出欄位指定別名

## 官方文檔

- SQL 標準: https://www.iso.org/standard/63555.html
- SQLite: https://www.sqlite.org/docs.html
- PostgreSQL: https://www.postgresql.org/docs/
