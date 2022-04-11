# GMIC-Qt

## Deskripsi

[GMIC](https://gmic.eu/download.html) berasal dari akronim _GREYC's Magic for Image Computing_ merupakan program tambahan sebagai pengolah dan pemroses gambar raster secara instan. Sedangkan Qt merupakan teknologi tampilan antarmuka modern yang digunakan oleh KDE. GMIC-Qt dapat diintegrasikan dengan perangkat lunak editor gambar lainnya seperti [GIMP](gimp.md) dan [Krita](krita.md).

![GMIC-Qt LangitKetujuh OS](../../media/image/gmic-langitketujuh-id.webp)

## Cara memasang

```sh
doas xbps-install -Sy gmic
```

Plugin tambahan (opsional):

- `gmic-gimp` Plugin tambahan untuk gimp.
- `gmic-krita` Plugin tambahan untuk krita.
- `gmic-zart` Plugin tambahan untuk zart.

Memasang plugin:

```sh
doas xbps-install -Sy gmic-{krita,gimp,zart}
```

## Cara penggunaan

Penggunaan GMIC-Qt di Krita dan GIMP relatif sama.
- Klik layer saat ini.
- Pilih menu `Filter` > `Start G'MIC-Qt` untuk Krita.
- Pilih menu `Filter` > `GMIC-Qt` untuk GIMP.

## Dokumentasi

Pengguna dapat belajar dan menjelajahi fitur GMIC-Qt melalui halaman [referensi](https://gmic.eu/reference/).
