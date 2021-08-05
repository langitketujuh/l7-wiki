# Lite vs Profesional

## Edisi Lite

Pada dasarnya [Edisi Lite](https://langitketujuh.id/lite) digunakan untuk rumahan dan tidak difokuskan ke bidang desain grafis, sehingga aplikasinya tidak banyak yang dimasukkan. Edisi Lite dapat di unduh secara gratis.

## Edisi Profesional

Sedangkan [Edisi Profesional](https://langitketujuh.id/pro), terbaik untuk kebutuhan lanjutan. Terdapat perangkat lunak desain grafis yang lengkap. Seperti ilustrasi, animasi 2D/3D, video & audio editing, pembuat fonta, pembuat game, dan desain layout. Untuk mendukung projek edisi profesional ini Anda diwajibkan untuk [berdonasi](https://langitketujuh.id/donasi) kepada developer agar projek ini selalu bermanfaat dan berkembang.

## Memilih Libc

Pada dasarnya `glibc` merupakan libc yang paling umum dan paling kompatible, sehinga disarankan untuk memilih `glibc`. Namun jika tidak ketergantungan dengan aplikasi nonfree maka sebaiknya menggunakan `musl`.

Berikut ini daftar perbandingan fitur setiap edisi Lite dan Profesional serta perbandingan antar libc `glibc` dan `musl`.

**Fitur** | **Lite Musl** | **Lite Glibc** | **Pro Musl** | **Pro Glibc**
:--- | :---: | :---: | :---: | :---:
Dukungan instalasi oleh tenaga ahli. | - | -  | **√** | **√**
Libreoffice paket aplikasi perkantoran. | **√** | **√** | **√** | **√**
Dukungan codec Audio dan Video. | **√** | **√** | **√** | **√**
KDE-Connect sinkron perangkat. | **√** | **√** | **√** | **√**
Deteksi Printer HP dan Epson. | **√** | **√** | **√** | **√**
V4l2loopback Virtual kamera. | **√** | **√** | **√** | **√**
Inkscape pengolah vektor. | **√** | **√** | **√** | **√**
Gimp manipulasi foto. | **√** | **√** | **√** | **√**
Audacity pengolah audio. | - | -  | **√** | **√**
Fontforge pembuat font. | - | -  | **√** | **√**
Blender animasi 2D/3D. | - | -  | **√** | **√**
Freecad 3D parametric. | - | -  | **√** | **√**
Godot pembuat game. | - | -  | **√** | **√**
LibreCAD 2D CAD. | - | -  | **√** | **√**
Scribus publisher. | - | -  | **√** | **√**
Krita digital painting. | - | -  | **√** | **√**
Digikam manajemen foto. | - | -  | **√** | **√**
Kdenlive pengolah video. | - | -  | **√** | **√**
HandBrake Media transkoder. | - | -  | **√** | **√**
Converseen konverter gambar. | - | -  | **√** | **√**
OpenToonz Animasi Raster 2D. | **√** | **√** | **√** | **√**
Screenkey Screencast monitor. | **√** | **√** | **√** | **√**
PulseEffects ekualiser audio. | **√** | **√** | **√** | **√**
Produksi Audio dengan Ardour . | - | -  | **√** | **√**
Rawtherapee pengolah foto raw. | - | -  | **√** | **√**
Plugin GMIC Qt Gimp dan Krita. | - | -  | **√** | **√**
Synfigstudio animasi 2D. | - | -  | **√** | **√**
Kalibrasi warna dengan DisplayCAL. | **√** | **√** | **√** | **√**
OBS Perekam desktop dan streaming. | **√** | **√** | **√** | **√**
Google Fonts untuk proyek komersil. | - | -  | **√** | **√**
Akses Update ISO terbaru. [^1] | -  | - | **√**  | **√**
Dukungan Aplikasi Appimage. | - | **√** | -   | **√**
Dukungan Aplikasi Nonfree.  | - | **√** | -   | **√**
Dukungan Wine windows. [^2] | - | **√** | -  | **√**

*Catatan:*

[^1] Akses Update ISO terbaru untuk pengguna yang telah mendaftar dan [berdonasi](https://langitketujuh.id/donasi).

[^2] Musl mendukung Wine windows 64 bit saja, sedangkan Glibc mendukung 32 dan 64 bit.
