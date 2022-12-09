# CMYK Color Converter

## Deskripsi

[CCC] merupakan perkakas cli GNU/Linux untuk melakukan mengkonversi gambar raster RGB menjadi profil CMYK melalui terminal atau konsole. Secara bawaan menanamkan profil CMYK dari ghostscript (Artifex CMYK SWOP Profile), tetapi pengguna juga dapat menggunakan profil CMYK lainnya.

Adapun profil CMYK yang didukung adalah sebagai berikut:

  1. Ghostscript (Artifex CMYK SWOP Profile) - bawaan.
  2. Krita       (Chemical proof).
  3. Scribus     (ISO Coated v2 300% basICColor).
  4. Scribus     (Fogra27L CMYK Coated Press).

<video autoplay controls poster="media/video/demo-ccc.webp" style="position: relative; width: 100%; height: auto; border:0;" >
  <source src="../../media/video/demo-ccc.webm" type="video/webm">
</video>

## Cara pemasangan

### LangitKetujuh OS

  ```
  get ccc
  ```

### GNU/Linux lain

  ```
  git clone https://gitlab.com/langitketujuh/ccc
  cd ccc
  sudo make install
  ```

## Cara penggunaan

Sebagai contoh jika ingin merubah `rgb.png` (sebagai input) ke `cmyk.jpg` (sebagai output), maka perintah yang digunakan adalah:

  ```
  ccc -i rgb.png -o cmyk.jpg
  ```

Jika ingin menggunakan profil CMYK lainnya bisa menggunakan parameter `-p`, secara bawaan bernilai `1` untuk profil Ghostscript. Pengguna dapat memilih jenis profil 1-4 sesuai profil yang tersedia. Misalnya memilih profil `2` untuk Krita (Chemical proof):

  ```
  ccc -i rgb.png -o cmyk.jpg -p 2
  ```

## Jenis berkas

Jenis berkas input `-i` yang didukung:
 - `.png`
 - `.jpg`
 - `.pdf`

Jenis berkas output `-o` yang didukung:
 - `.jpg`
 - `.tiff`
 - `.pdf`

Untuk lebih lanjut, jalankan perintah `ccc --help`.

[CCC]:https://gitlab.com/langitketujuh/ccc
