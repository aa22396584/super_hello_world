# Koleksi Hello World Multi-Bahasa

[English](README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Bahasa Indonesia](README.id.md) | [ไทย](README.th.md)

Kumpulan implementasi `Hello, World!` di lebih dari 60 bahasa pemrograman, dikelompokkan menurut paradigma untuk memudahkan perbandingan sintaks dan cara eksekusi.

## 🌟 Ringkasan

- Mencakup bahasa terkompilasi, terinterpretasi, fungsional, skrip, dan lainnya
- Setiap bahasa memiliki sumber kode berkomentar serta README tersendiri
- Tes otomatis memastikan output konsisten `Hello, World!`
- Daftar lengkap bahasa dan perintah ada di README versi Inggris

## 🚀 Mulai Cepat

Gunakan skrip terpadu untuk menjalankan bahasa apa pun:

```bash
# Jalankan bahasa tertentu
./run.sh python

# Jalankan dengan nama lengkap
./run.sh "C++"

# Lihat daftar bahasa / kategori
./run.sh --list
./run.sh --category compiled

# Jalankan semua (butuh runtime terkait)
./run.sh --all
```

## 🧪 Menjalankan Tes

```bash
# Tes semua bahasa
./test.sh

# Tes bahasa atau kategori tertentu
./test.sh rust
./test.sh --category functional

# Hanya tes bahasa yang runtimenya terpasang
./test.sh --available-only

# Output rinci
./test.sh --verbose
```

## 🗂 Struktur Proyek

```
multi-language-hello-world/
├── README.md         # Bahasa Inggris
├── README.id.md      # Bahasa Indonesia
├── README.zh-CN.md   # Mandarin Sederhana
├── README.zh-TW.md   # Mandarin Tradisional
├── README.ja.md      # Jepang
├── README.ko.md      # Korea
├── languages.json    # Metadata bahasa
├── run.sh            # Skrip eksekusi
├── test.sh           # Skrip pengujian
├── languages/        # Implementasi tiap bahasa
└── docs/             # Panduan instalasi & referensi
```

## 🤝 Kontribusi

1) Buat direktori di kategori yang sesuai dan tambahkan `hello.{ext}`  
2) Tambahkan README di direktori tersebut (instalasi dan cara menjalankan)  
3) Perbarui metadata di `languages.json`  
4) Jalankan `./test.sh your-language` untuk verifikasi  

Detail lengkap ada di `CONTRIBUTING.md`.

## 🎯 Tujuan

- Referensi cepat untuk mempelajari sintaks berbagai bahasa
- Membandingkan cara penyelesaian tugas yang sama di banyak bahasa
- Menjaga contoh tetap dapat dijalankan dan lulus tes

## 📝 Lisensi

Proyek ini bersifat open source untuk keperluan belajar.

## 🔗 Sumber

- Panduan instalasi: `docs/installation-guides/`
- Perbandingan bahasa: `docs/language-comparison.md`
- Panduan kontribusi: `CONTRIBUTING.md`

