# Wacom

## Deskripsi

Secara bawaan LangitKetujuh sudah mengikutsertakan pustaka `libwacom` dari [Wacom](https://www.wacom.com). Pengguna hanya perlu menancapkan ke port USB saja. Pen tablet Wacom memiliki fitur lebih, yaitu dapat diintegrasikan langsung dengan pengaturan KDE. Tetapi hanya bekerja di sesi `X11` dan memerlukan `kcm-wacomtablet`. Cara pindah sesi desktop ke `X11` ada di [halaman ini](../../kde/pengaturan-sistem.html#mengganti-sesi-desktop).

```
get kcm-wacomtablet
```

Buka bagian `System Settings` > Bagian Hardware `Input Device` > `Graphic Tablet`. Dengan pengaturan tersebut, pengguna dapat memodifikasi tombol dan mengatur sensitifitas (pressure) pen tablet.

![Pen Tablet LangitKetujuh OS](../../../media/image/graphic-pen-tablet-kde-langitketujuh-id.webp)
