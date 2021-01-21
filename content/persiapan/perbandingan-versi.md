---
title: Perbandingan Versi
weight: 2
draft: false
---

## Musl vs Glibc

{{< tabs "different" >}}

{{< tab "Musl" >}}
Musl mencoba untuk menjadi kebalikan Glibc. Menghapus semua yang tidak diperlukan dan menggunakan kode assembler untuk mencoba menjadi lebih cepat dalam tugas-tugas tertentu. Musl tidak memiliki multilib (dukungan 32-bit) dan tidak memiliki dukungan hebat seperti Glibc, tetapi ia memiliki footprint dan penggunaan sumber daya yang sangat minimalis.

Musl keren dan heboh, tetapi tidak begitu banyak orang yang menggunakannya dan tidak memiliki banyak dukungan. Namun ia menggunakan sumber daya yang amat kecil. Kami merekomendasikan menggunakan Musl jika tidak ada kebutuhan aplikasi pihak ketiga.

{{< hint info >}}
**Rekomendasi**\
Musl direkomendasikan untuk Anda yang memburu performa dan efisiensi. Render video, animasi, kompil, multitasking, akan terasa perbedaannya. Aplikasi nonfree seperti Zoom, Teams, dan sebagainya bisa dipasang melalui flatpak namun terbatas.
{{< /hint >}}
{{< /tab >}}

{{< tab "Glibc" >}}
Glibc memiliki kompatibilitas yang jauh lebih banyak dan memiliki dukungan multilib (32bit). Sedangkan Musl cukup efisien dan keren. Glibc cukup membengkak dalam segi ukuran dan memiliki banyak hal yang tidak digunakan lagi bahkan sudah cukup usang, tetapi memiliki dukungan multilib dan semua yang telah dibangun untuk linux mendukung glibc.

Glibc sifatnya membengkak tetapi semua orang menggunakannya dan memiliki dukungan untuk semuanya.

{{< hint warning >}}
**Rekomendasi**\
Glibc direkomendasikan untuk Anda yang memerlukan aplikasi Nonfree seperti driver GPU Nvidia, Chrome, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley, Zoom, Teams dan aplikasi pihak ketiga lainnya. Namun Glibc sedikit lebih lambat dan bloat dari Musl.
{{< /hint >}}
{{< /tab >}}

{{< /tabs >}}

## Tabel Perbandingan

**Fitur** | **Lite - Musl** | **Lite - Glibc** | **Pro - Musl** | **Pro - Glibc**
:--- | :---: | :---: | :---: | :---:
Dukungan instalasi oleh tenaga ahli. | - | -  | **√** | **√**
Dukungan codec Audio dan Video. | **√** | **√** | **√** | **√**
Libreoffice paket aplikasi perkantoran. | **√** | **√** | **√** | **√**
Deteksi Printer HP dan Epson. | **√** | **√** | **√** | **√**
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
- [*] Akses Update ISO terbaru untuk donatur yang telah memberikan 5 bintang keatas.
