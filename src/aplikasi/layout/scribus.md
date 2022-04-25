# Scribus

## Deskripsi

[Scribus] merupakan perangkat lunak yang digunakan untuk penerbitan rancangan tata letak pada buku, brosur, poster, kalender, majalah dan bahkan dapat digunakan untuk perindustrian manufaktur. [Scribus] lebih dikenal sebagai DTP (_desktop publishing_) sebagai keperluan layout halaman profesional. Dari sekian banyaknya perangkat lunak DTP, dapat dikatakan scribus sebagai satu-satunya DTP yang dapat didapatkan secara cuma-cuma.

![Scribus LangitKetujuh OS](../../media/image/scribus-langitketujuh-id.webp)

[Scribus] dirancang sebagai alat bantu tata letak yang fleksibel, mudah digunakan dan menawarkan profil warna. Profil warna tersebut antara lain:

- RGB, sRGB display profile (ICC V2.2)
- CMYK, ISO Coated v2 300% (basiCColor)

Secara bawaan, [Scribus] di sistem operasi LangitKetujuh sudah terpasang ghostscript sehingga scribus dapat berjalan dengan semestinya, baik untuk ekspor ke PDF maupun Postscript.

## Cara memasang

```sh
doas xbps-install -Sy {,l7-}scribus
cp -rfv /etc/skel/.config/scribus/ ~/.config/
```

## Dokumentasi

Pengguna dapat mempelajari [Scribus] di halaman [Wiki] yang telah disediakan.

[Scribus]:https://www.scribus.net/
[Wiki]:https://wiki.scribus.net/
