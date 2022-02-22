# GIMP

## Deskripsi

[GIMP](https://www.gimp.org/) merupakan akronim dari GNU Image Manipulation Program yang dikembangkan dan didistribusikan secara bebas ke berbagai platform. Seperti GNU/Linux, Windows, MacOS dan BSD. GIMP sangat diminati oleh praktisi desain grafis sebagai pengolah grafis berbasis raster.

Banyak fitur dan efek yang disediakan oleh GIMP. Di LangitKetujuh [Edisi Studio](../../perbandingan/edisi.md#studio) sudah terintegrasi dengan [GMIC-Qt](gmic-qt.md) untuk mengatur efek gambar dengan instan dan mudah.

![GIMP LangitKetujuh OS](../../media/image/gimp-langitketujuh-id-2.webp)

## Cara memasang

```sh
doas xbps-install -S {,l7-}gimp
cp -rfv /etc/skel/.config/GIMP/ ~/.config/
```

Jika ingin menambahkan plugin gimp gmic, bisa merujuk ke [halaman GMIC-Qt](gmic-qt.md).

## Pengaturan tambahan

Beberapa pengaturan GIMP di LangitKetujuh yang ditambahkan diantaranya:

- Menggunakan tema sistem, yaitu `breeze-dark`.
- Menggunakan ikon `Symbolic`.
- Menggunakan profil warna sRGB `sRGB-elle-V2-srgbtrc.icc` krita.
- Menggunakan profil warna CMYK `Chemical Proof` krita.
- Sisi sebelah kanan digunakan hanya panel layer saja, agar manajemen layer lebih leluasa.
- Sisi sebelah kiri digunakan untuk panel properti dan warna.

## Dokumentasi

Setiap pengguna dapat memepelajari dan menjelajahi fitur GIMP melalui halaman [dokumentasi](https://www.gimp.org/docs/) dan di [ebook](https://www.gimp.org/books/) yang tersedia.
