# Sistem Swap

## Tradisional Swapfile

Sistem tradisional swap dengan membuat partisi khusus swapfile sangat tidak disarankan. Alasannya sebagai berikut:

* Memperlambat kinerja Hardisk
* Memperpendek umur SSD
* Mengurangi ruang disk

Dengan beberapa alasan tersebut Anda tidak seharusnya membuat partisi swapfile. Terlebih lagi untuk LangitKetujuh diatas versi 0.9 sudah menggunakan ZRAM untuk manajemen swap yang lebih baik.

## ZRAM

ZRAM adalah salah satu fitur dari modul kernel yang bertujuan untuk menggunakan ruang sisa ram sebagai memori cache terkompresi. Sehingga swap berjalan dengan ram yang terkompresi dan tidak mengurangi ruang disk Anda. Secara bawaan di LangitKetujuh, zram sudah aktif dengan tambahan porsi 25% dari ram fisik.

**Ram fisik** | **ZRAM (25%)**  | **Memori total**
:---          | :---            | :---
**2 GiB**     | + 256 MiB         | 2.3 GiB
**4 GiB**     | + 1 GiB           | 5 GiB
**8 GiB**     | + 2 GiB           | 10 GiB
**16 GiB**    | + 4 GiB           | 20 GiB
**+16 GiB**   | **Nonaktif**    | ~ GiB

Misalnya anda memiliki RAM fisik 8GB, maka akan ditambah 2GB (25%) lagi oleh ZRAM. Maka total memori Anda menjadi 10GB, menarik bukan!

Pengaturan layanan ZRAM dapat dibantu dengan [Zramen](../layanan/zramen.md).