# L7 Export

## Deskripsi

[L7 Export] merupakan fork dari [inkporter-cli](https://github.com/raniaamina/inkporter) yang berfungsi sebagai pengekspor id objek yang telah ditentukan dari inkscape.

## Fitur

* Mendukung Ekspor ke marketplace.
* Terdapat Validator EPS8.
* Ekspor ke berkas Eps rgb.
* Ekspor ke berkas Ai rgb/cmyk.
* Ekspor ke berkas Psd rgb/cmyk.
* Ekspor ke berkas Jpg rgb/cmyk + warna profil.
* Ekspor ke berkas Tif rgb/cmyk + warna profil.
* Ekspor ke berkas Pdf rgb/cmyk + warna profil.
* Ekspor ke berkas Png rgb.
* Ekspor ke berkas Webp dan Svg.

## Color profile

Profil warna yang didukung:

* RGB   : Colord - sRGB (default)
* RGB   : Ghostscript - Artifex sRGB Profile
* RGB   : Krita - scRGB (lcms internal)
* RGB   : Scribus- sRGB display profile (ICC v2.2)
* CMYK  : Ghostscript - Artifex CMYK SWOP Profile
* CMYK  : Krita - Chemical proof
* CMYK  : Scribus - ISO Coated v2 300% (basICColor)

## Ekspor marketplace

Sederhananya fitur ini mengekspor id objek inkscape menjadi berkas siap upload dengan format ekstensi sebagai berikut:

- (EPS + PNG).zip
- (EPS + JPG).zip
- EPS.zip + JPG
- EPS.zip + PNG
- EPS + JPG
- EPS
- SVG

## Validator EPS8

Fitur ini untuk memeriksa objek-objek yang tidak didukung EPS8. Misalnya transparansi, filter efek, teks, objek dan stroke yang belum dikonversi. Dengan demikian objek yang tersebut dapat direvisi sampai valid untuk di ekspor ke pilihan Marketplace. Pastinya lebih aman dan bebas dari hasil raster EPS.

## Pemasangan

Secara bawaan sudah ada di Langitketujuh OS. Sedangkan untuk linux lain seperti Ubuntu, Debian, openSUSE, Arch, Fedora, Void dan derivatifnya jalankan perintah dibawah ini.

```bash
git clone --depth 1 https://gitlab.com/langitketujuh/l7-export
cd l7-export/
sudo make install
sudo l7-export --install
```

Catatan: L7 Export akan berjalan di ubuntu dengan inkscape diatas versi 1.0.

## Penggunaan

- Berikan ID setiap objek di inkscape
- Buka Konsole (terminal emulator) di direktori yang sama. Dengan cara klik kanan, klik "Open Terminal Here"
- Masukkan perintah dibawah ini

```sh
l7-export namaberkas.svg namaID
```

[L7 Export]:https://gitlab.com/langitketujuh/l7-export/
