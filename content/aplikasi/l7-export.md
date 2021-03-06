---
title: L7 Export
weight: 6
draft: false
---

{{< toc >}}

### Deskripsi

L7 EXPORT merupakan fork dari [inkporter-cli](https://github.com/raniaamina/inkporter/blob/master/source/inkporter/inkporter) yang berfungsi sebagai pengekspor id objek yang telah ditentukan dari inkscape.

### Fitur

* Mendukung Ekspor ke marketplace
* Mendukung Eps rgb/cmyk (baru).
* Mendukung Ai rgb/cmyk (baru).
* Mendukung Psd rgb/cmyk (baru).
* Mendukung Jpg rgb/cmyk + warna profil.
* Mendukung Tif rgb/cmyk + warna profil.
* Mendukung Pdf rgb/cmyk + warna profil.
* Mendukung Png rgb.
* Mendukung Webp dan Svg.

### Color Profile

Profil warna yang didukung:

* sRgb > Default    (sRGB)
* Cmyk > Krita      (Chemical proof)
* Cmyk > Generic    (SWOP2006 Coated3v2)
* Cmyk > Corel      (Japan Color 2001 Coated)
* Cmyk > Adobe      (U.S. Web Coated (SWOP) v2)

### Marketplace

Sederhananya fitur ini mengekspor id objek inkscape menjadi berkas siap upload. Marketplace tersebut antara lain:

* Pngtree
* Freepik
* Adobe stock
* Vectorstock
* Vecteezy
* Shutterstock
* Flaticon / Iconfinder.

In syaa Allah akan ada pembaruan secara berkala.

Tips: untuk ekspor ke marketplace sesuaikan ukuran objek dengan peraturan dan kebijakan marketplace yang berlaku, karena area kanvas setiap marketplace berbeda-beda. Area kanvas yang direkomendasikan sudah ada di kolom "Area (px)" dan Dpi gambar preview sesuai kolom "Image (dpi)". 

### Pemasangan

Secara bawaan sudah ada di Langitketujuh OS tinggal menambah color profile saja

```shell
l7-export --install
```

Sedangkan untuk linux lain seperti Ubuntu, Debian, openSUSE, Arch, Fedora, Void dan derivatifnya. Jalankan perintah ini

```shell
sudo curl "https://langitketujuh.id/sh/l7-export" | sudo bash

l7-export --install
```

### Cara penggunaan

- Berikan ID setiap objek di inkscape
- Buka Konsole (terminal emulator) di direktori yang sama. Dengan cara klik kanan, klik "Open Terminal Here"
- Masukkan perintah dibawah ini

```shell
l7-export namaberkas.svg namaID
```
