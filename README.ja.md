# マルチ言語 Hello World コレクション

[English](README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Bahasa Indonesia](README.id.md) | [ไทย](README.th.md)

60 以上のプログラミング言語で「Hello, World!」を実装したサンプル集です。パラダイム別に整理され、構文や実行方法を比較できます。

## 🌟 概要

- コンパイル型・インタプリタ型・関数型・スクリプト・その他を網羅
- 各言語に注釈付きソースと個別 README を用意
- 自動テストで出力 `Hello, World!` を検証
- 全言語の一覧とコマンドは英語版 README を参照してください

## 🚀 クイックスタート

共通スクリプトで任意の言語を実行できます。

```bash
# 特定の言語を実行
./run.sh python

# フルネームで実行
./run.sh "C++"

# 言語一覧
./run.sh --list
./run.sh --category compiled

# すべて実行（環境が必要）
./run.sh --all
```

## 🧪 テストを実行

```bash
# 全テスト
./test.sh

# 言語やカテゴリを指定
./test.sh rust
./test.sh --category functional

# インストール済みのみテスト
./test.sh --available-only

# 詳細ログ
./test.sh --verbose
```

## 🗂 プロジェクト構成

```
multi-language-hello-world/
├── README.md         # 英語
├── README.ja.md      # 日本語
├── README.zh-CN.md   # 簡体字中国語
├── README.zh-TW.md   # 繁体字中国語
├── languages.json    # 言語メタデータ
├── run.sh            # 実行スクリプト
├── test.sh           # テストスクリプト
├── languages/        # 各言語の実装
└── docs/             # インストールガイドなど
```

## 🤝 コントリビュート

1) 適切なカテゴリ配下にディレクトリを作成し `hello.{ext}` を追加  
2) ディレクトリ内に README を作成（インストールと実行方法）  
3) `languages.json` にメタデータを追加  
4) `./test.sh your-language` で検証  

詳細は `CONTRIBUTING.md` を参照してください。

## 🎯 目標

- 多言語の構文を学ぶためのリファレンス
- 同じタスクを各言語で比較
- 常に実行可能でテスト済みの状態を維持

## 📝 ライセンス

オープンソースとして提供しています。学習用途で自由に利用できます。

## 🔗 リソース

- インストールガイド: `docs/installation-guides/`
- 言語比較: `docs/language-comparison.md`
- 貢献ガイド: `CONTRIBUTING.md`

