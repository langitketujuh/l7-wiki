# Partisi awal

## Tujuan

Pembagian partisi melalui mode pemasangan langsung juga bisa dilakukan. Tetapi agar lebih siap lagi, sebaiknya pembagian partisi dilakukan diawal sehingga lebih mudah dan cepat untuk dilakukan _mount point_ di filesystem nanti. Tahapan partisi awal ini merupakan sebagai pilihan saja, bisa dilakukan atau tidak.

## Pemartisian

Pemartisian sebaiknya menggunakan `cfdisk`. Sebagai contoh, disk yang akan dipasang adalah `sda`. Maka perintah yang dijalankan adalah:

```sh
doas cfdisk /dev/sda
```

Gunakan navigasi arah panah untuk melakukan eksekusi. Misalnya melakukan perintah `new` dan `delete`. Kemudian atur partisi yang akan digunakan sesuai kebutuhan. Agar optimal penggunaan partisinya untuk instalasi satu sistem operasi sebaiknya menggunakan 3 jenis partisi, yaitu antara lain:

> 🔔 **Tips**
>
> Khusus SSD untuk bagian partisi root disarankan menggunakan `F2fs`, sedangkan HDD menggunakan `XFS`, `Btrfs` atau `Ext4`.

- **Legacy (dos/mbr)**

  | **Tipe Partisi** | **Jumlah** | **Mount Point** |
  | :--------------: | :--------: | :-------------: |
  |      `Vfat`      |   `512M`   |     `/boot`     |
  |      `F2fs`      |   `40G`    |       `/`       |
  |      `F2fs`      |    `~`     |     `/home`     |

- **UEFI (gpt)**

  | **Tipe Partisi** | **Jumlah** | **Mount Point** |
  | :--------------: | :--------: | :-------------: |
  |      `Vfat`      |   `512M`   |   `/boot/efi`   |
  |      `F2fs`      |   `40G`    |       `/`       |
  |      `F2fs`      |    `~`     |     `/home`     |

Jumlah gigabyte dari `/dev/sda3` bisa ditulis dari sisa kapasitas hardisk yang ada atau disesuaikan dengan kebutuhan saja. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.
