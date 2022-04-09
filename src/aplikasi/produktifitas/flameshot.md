# Flameshot

[Flameshot](https://flameshot.org/) merupakan perangkat lunak untuk mengambil gambar layar monitor dengan menambahkan fitur editing yang sederhana tetapi sangat efektif. Seperti menambahkan persegi, lingkaran, arah panah, garis, efek pixelate dan blur, upload ke penyedia gambar dan lain-lain.

![Flameshot LangitKetujuh OS](../../media/image/flameshot-langitketujuh-id-1.webp)

## Cara pemasangan

```
doas xbps-install -S {,l7-}flameshot
```

Gunakan konfigurasi tambahan.

```
mkdir -pv ~/.config/autostart/
cp -rfv /etc/skel/.config/flameshot/ ~/.config/
cp -rfv /etc/skel/.config/autostart/Flameshot.desktop ~/.config/autostart/
```

Pengguna dapat menggunakan flameshot dengan langsung mengklik ikon dibagian panel kanan bawah.

![Flameshot LangitKetujuh OS](../../media/image/flameshot-langitketujuh-id-2.webp)

## Pintasan

- `Klik kiri` = Menyeleksi area pengambil gambar.
- `Klik kanan` = Menampilkan pengambil warna.
- `Ctrl+s` = Menyimpan hasil seleksi.
- `Ctrl+c` = Menyalin hasil seleksi.
- `Scroll` = Mengganti nilai ketebalan garis/efek.
- `Spasi` = Menampilkan pengaturan.
- `Esc` = Keluar.
