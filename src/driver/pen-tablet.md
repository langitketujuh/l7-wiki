# Pen Tablet

## Wacom Driver

Secara bawaan LangitKetujuh sudah memasukkan driver [Wacom](https://www.wacom.com/). Anda hanya perlu menancapkan saja ke port USB. Pen tablet Wacom memiliki fitur lebih, yaitu dapat diintegrasikan langsung dengan pengaturan KDE. Buka bagian `System Settings` > Bagian Hardware `Input Device` > `Graphic Tablet`. Dengan pengaturan tersebut, Anda dapat memodifikasi tombol dan mengatur sensitifitas (pressure) pen tablet.

![Pen Tablet LangitKetujuh OS](../media/image/graphic-pen-tablet-kde-langitketujuh-id.webp)

## Digimend Driver

Beberapa vendor pen tablet memerlukan driver khusus yang menggunakan [Digimend Driver](http://digimend.github.io/). Seperti Huion, KYE, Polostar, UC-Logic, UGTizer, Ugee, ViewSonic, Waltop, XP-Pen, dan Yiynova. Untuk mendukung pen tablet tersebut, Anda harus memasangnya dengan menjalankan perintah ini.

```
sudo xbps-install -S digimend-kernel-drivers
```

Tipe pen tablet yang didukung oleh Digimend Anda dapat melihatnya di [daftar pen tablet Digimend](https://digimend.github.io/tablets/). Namun ada beberapa tipe pen tablet tidak didukung sepenuhnya seperti VEIKK (A30) dan Huion tipe tertentu (G10T & GC610).

Untuk kedepannya, LangitKetujuh diatas versi `20210921` sudah memasukkan Digimend driver.

## Kompatibilitas

Kami menyarankan sebelum menggunakan atau membeli produk pen tablet, lebih baik menggunakan pen tablet yang memiliki kompatibilitas yang tinggi. Seperti pen tablet wacom yang mudah digunakan, tinggal colok ke port usb dan langsung tersambung secara otomatis. Terlebih lagi memiliki integrasi dengan pengaturan sistem di KDE Plasma.