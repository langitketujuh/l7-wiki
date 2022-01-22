# ZRAM

`zram` adalah salah satu fitur dari modul kernel yang bertujuan untuk menggunakan ruang sisa RAM sebagai memori cache terkompresi. Sehingga swap berjalan dengan RAM yang terkompresi dan tidak mengurangi ruang disk Anda. Secara bawaan di LangitKetujuh, `zram` sudah aktif dengan tambahan porsi 25% dari RAM fisik.

| **Ram fisik** | **ZRAM (25%)** | **Memori total** |
| :------------ | :------------- | :--------------- |
| **2 GiB**     | + 256 MiB      | 2.3 GiB          |
| **4 GiB**     | + 1 GiB        | 5 GiB            |
| **8 GiB**     | + 2 GiB        | 10 GiB           |
| **16 GiB**    | + 4 GiB        | 20 GiB           |
| **+16 GiB**   | **Nonaktif**   | ~ GiB            |

Misalnya Anda memiliki RAM fisik 8GB, maka akan ditambah 2GB (25%) lagi oleh `zram`. Maka total memori Anda menjadi 10GB.

Pengaturan layanan `zram` dapat dibantu dengan [zramen](../../konfigurasi/layanan/zramen.md).
