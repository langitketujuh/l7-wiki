# Krita

## Deskripsi

Krita merupakan salah satu perangkat lunak yang dikembangkan oleh KDE sebagai pengolah raster yang memiliki banyak fitur. Krita tersedia untuk platform Windows, Mac, BSD, dan GNU/Linux (flatpak, appimage, snap) serta tersedia dalam kode sumber.

Krita digunakan untuk kebutuhan sketsa, ilustrasi, komik, tekstur, dan animasi. Meskipun krita pada dasarnya sebagai pengolah raster, tetapi mampu menangani vektor secara terbatas.

![Krita LangitKetujuh OS](../../media/image/krita-langitketujuh-id.webp)

## Cara memasang

```sh
doas xbps-install -S {,l7-}krita
cp -rfv /etc/skel/.config/kritarc ~/.config/
```

Jika ingin menambahkan plugin krita gmic, bisa merujuk ke [halaman GMIC-Qt](gmic-qt.md).

## Pengaturan tambahan

Beberapa pengaturan krita yang ditambahkan di sistem operasi LangitKetujuh adalah sebagai berikut:

- Menggunakan tema `Breeze Dark`.
- Menggunakan workspace `LangitKetujuh`.
- Bagian bar sisi kanan untuk layer saja.
- Bagian bar sisi kiri untuk seleksi warna dan properti.
- Status bar disembunyikan.
- Penggulir (scrollbar) disembunyikan.

## Dokumentasi

Sebagai pengguna awam sebelum mempelajari krita, sebaiknya tanamkan terlebih dahulu ke dalam pola pikir bahwa krita bukanlah pengganti perangkat lunak untuk manipulasi grafik. Melainkan sebagai perangkat lunak untuk sketsa, ilustrasi dan pembuat tektur. Dengan demikian, krita ideal untuk setiap pengguna.

Pengguna dapat belajar dan menjelajahi fitur krita melalui halaman [dokumentasi](https://docs.krita.org/en/index.html).
