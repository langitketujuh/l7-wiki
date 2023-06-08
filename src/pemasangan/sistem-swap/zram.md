# ZRAM

## Deskripsi

ZRAM (sebelumnya dikenal dengan _compcache_) adalah salah satu fitur dari modul kernel yang bertujuan untuk menggunakan ruang sisa RAM sebagai memori cache terkompresi. Sehingga swap dapat berjalan dengan RAM yang terkompresi dan tidak mengurangi ruang disk. Secara bawaan di LangitKetujuh, ZRAM sudah aktif dengan tambahan porsi 25% dari RAM fisik.

| **Ram fisik** | **ZRAM (25%)** | **Memori total** |
| :------------ | :------------- | :--------------- |
| **2 GiB**     | + 256 MiB      | 2.3 GiB          |
| **4 GiB**     | + 1 GiB        | 5 GiB            |
| **8 GiB**     | + 2 GiB        | 10 GiB           |
| **16 GiB**    | + 4 GiB        | 20 GiB           |
| **+16 GiB**   | **Nonaktif**   | ~ GiB            |

Misalnya pengguna memiliki RAM fisik 8GB, maka akan ditambah 2GB (25%) lagi oleh ZRAM . Maka total memori menjadi 10GB.

Pengaturan layanan ZRAM dapat dibantu dengan [zramen](../../konfigurasi/layanan/zramen.md).
