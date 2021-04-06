---
title: L7 Export
weight: 6
draft: false
---

L7 EXPORT merupakan fork dari [inkporter-cli](https://github.com/raniaamina/inkporter/blob/master/source/inkporter/inkporter) yang berfungsi sebagai pengekspor id objek yang telah ditentukan dari inkscape.

{{< toc >}}

## Fitur

* Mendukung Ekspor ke marketplace
* Terdapat Validator EPS8
* Ekspor ke berkas Eps rgb.
* Ekspor ke berkas Ai rgb/cmyk.
* Ekspor ke berkas Psd rgb/cmyk.
* Ekspor ke berkas Jpg rgb/cmyk + warna profil.
* Ekspor ke berkas Tif rgb/cmyk + warna profil.
* Ekspor ke berkas Pdf rgb/cmyk + warna profil.
* Ekspor ke berkas Png rgb.
* Ekspor ke berkas Webp dan Svg.

## Color Profile

Profil warna yang didukung:

* RGB  > Default    (sRGB)
* CMYK > Krita      (Chemical proof)
* CMYK > Generic    (SWOP2006 Coated3v2)
* CMYK > Corel      (Japan Color 2001 Coated)
* CMYK > Adobe      (U.S. Web Coated (SWOP) v2)

## Ekspor Marketplace

Sederhananya fitur ini mengekspor id objek inkscape menjadi berkas siap upload. Marketplace tersebut antara lain:

* Pngtree
* Freepik
* Adobe stock
* Vectorstock
* Vecteezy
* Shutterstock
* Flaticon / Iconfinder.

In syaa Allah akan ada pembaruan secara berkala.

Tips: untuk ekspor ke marketplace sesuaikan ukuran objek dengan peraturan dan kebijakan marketplace yang berlaku, karena area kanvas setiap marketplace berbeda-beda. Area kanvas yang direkomendasikan sudah ada di kolom "Advice (px)" dan Dpi gambar preview sesuai kolom "Preview (dpi)". 

## Validator EPS8

Fitur ini untuk memeriksa objek-objek yang tidak didukung EPS8. Misalnya transparansi, filter efek, teks, objek dan stroke yang belum dikonversi. Dengan demikian objek yang tersebut dapat direvisi sampai valid untuk di ekspor ke pilihan Marketplace. Pastinya lebih aman dan bebas dari hasil raster EPS.

## Pemasangan

Secara bawaan sudah ada di Langitketujuh OS tinggal menambah color profile saja

```shell
sudo l7-export --install
```

Sedangkan untuk linux lain seperti Ubuntu, Debian, openSUSE, Arch, Fedora, Void dan derivatifnya. Jalankan perintah ini

```shell

sudo curl "https://langitketujuh.id/sh/l7-export" | sudo bash

sudo l7-export --install
```

## Penggunaan

- Berikan ID setiap objek di inkscape
- Buka Konsole (terminal emulator) di direktori yang sama. Dengan cara klik kanan, klik "Open Terminal Here"
- Masukkan perintah dibawah ini

```shell
l7-export namaberkas.svg namaID
```