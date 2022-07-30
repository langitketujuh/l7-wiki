# Partisi awal

## Tujuan

Pembagian partisi melalui mode pemasangan langsung juga bisa dilakukan. Tetapi agar lebih siap lagi, sebaiknya pembagian partisi dilakukan diawal sehingga lebih mudah dan cepat untuk dilakukan _mount point_ di filesystem nanti. Tahapan partisi awal ini merupakan sebagai pilihan saja, bisa dilakukan atau tidak.

## Pemartisian

Pemartisian sebaiknya menggunakan `cfdisk`. Sebagai contoh, disk yang akan dipasang adalah `sda`. Maka perintah yang dijalankan adalah:

```sh
doas cfdisk /dev/sda
```

Gunakan navigasi arah panah untuk melakukan eksekusi. Misalnya melakukan perintah `new` dan `delete`. Kemudian atur partisi yang akan digunakan sesuai kebutuhan.

- **Legacy (dos/mbr)**

  | **Partisi** | **Ukuran** |      **Tipe**      |
  | :---------: | :--------: | :----------------: |
  | `/dev/sda1` |   `512M`   |    `BIOS boot`     |
  | `/dev/sda2` |   `40G`    | `Linux filesystem` |
  | `/dev/sda3` |    `~`     | `Linux filesystem` |

- **UEFI (gpt)**

  | **Partisi** | **Ukuran** |      **Tipe**      |
  | :---------: | :--------: | :----------------: |
  | `/dev/sda1` |   `512M`   |    `EFI System`    |
  | `/dev/sda2` |   `40G`    | `Linux filesystem` |
  | `/dev/sda3` |    `~`     | `Linux filesystem` |


Jumlah gigabyte dari `/dev/sda3` bisa ditulis dari sisa kapasitas hardisk yang ada atau disesuaikan dengan kebutuhan saja. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.
