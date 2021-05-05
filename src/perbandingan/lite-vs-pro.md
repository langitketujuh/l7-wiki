# Lite vs Profesional

## Lite (Gratis)

Pada dasarnya edisi Lite digunakan untuk rumahan dan tidak difokuskan ke bidang desain grafis, sehingga aplikasinya tidak banyak yang dimasukkan. Edisi Lite dapat di unduh secara gratis.

## Profesional (Donasi)

Sedangkan Edisi Profesional, terbaik untuk kebutuhan lanjutan. Terdapat Peralatan desain grafis yang lengkap. Termasuk kebutuhan ilustrasi, animasi 2D/3D, video & audio editing, pembuat game, dan desain layout. Untuk mendukung projek edisi profesional ini anda diwajibkan untuk [berdonasi](https://langitketujuh.id/donasi) kepada developer agar projek ini selalu bermanfaat dan berkembang.

## Memilih Libc

Pada dasarnya `glibc` merupakan libc yang paling umum dan paling kompatible, sehinga disarankan untuk memilih `glibc`. Namun jika tidak ketergantungan dengan aplikasi nonfree maka sebaiknya menggunakan `musl`.

Berikut ini daftar perbandingan fitur setiap edisi Lite dan Profesional serta perbandingan antar libc `glibc` dan `musl`.

**Fitur** | **Lite Musl** | **Lite Glibc** | **Pro Musl** | **Pro Glibc**
:--- | :---: | :---: | :---: | :---:
Dukungan instalasi oleh tenaga ahli. | - | -  | **√** | **√**
Dukungan codec Audio dan Video. | **√** | **√** | **√** | **√**
Libreoffice paket aplikasi perkantoran. | **√** | **√** | **√** | **√**
Deteksi Printer HP dan Epson. | **√** | **√** | **√** | **√**
Kalibrasi warna dengan DisplayCAL. | **√** | **√** | **√** | **√**
Gimp manipulasi foto. | **√** | **√** | **√** | **√**
Inkscape pengolah vektor. | **√** | **√** | **√** | **√**
Audacity pengolah audio. | - | -  | **√** | **√**
Blender animasi 2D/3D. | - | -  | **√** | **√**
Fontforge pembuat font. | - | -  | **√** | **√**
Godot pembuat game. | - | -  | **√** | **√**
Kdenlive pengolah video. | - | -  | **√** | **√**
Krita digital painting. | - | -  | **√** | **√**
Scribus publisher. | - | -  | **√** | **√**
Synfigstudio animasi 2D. | - | -  | **√** | **√**
Digikam manajemen foto. | - | -  | **√** | **√**
Rawtherapee pengolah foto raw. | - | -  | **√** | **√**
Plugin GMIC Qt Gimp dan Krita. | - | -  | **√** | **√**
Produksi Audio dengan Ardour & Cadence. | - | -  | **√** | **√**
Google Fonts untuk proyek komersil. | - | -  | **√** | **√**
Akses Update ISO terbaru [*] | -  | - | **√**  | **√**
Dukungan Aplikasi Appimage | - | **√** | -   | **√**
Dukungan Nvidia Propietary driver | - | **√** | -   | **√**
Dukungan Aplikasi Nonfree  | - | **√** | -   | **√**
Dukungan Wine windows | - | **√** | -  | **√**

**Keterangan:**

- Musl mendukung Wine windows 64 bit saja, sedangkan Glibc mendukung 32 dan 64 bit.
- [*] Akses Update ISO terbaru untuk pengguna yang telah mendaftar dan [berdonasi](https://langitketujuh.id/donasi).
