
# Partisi terkunci

Ada 3 kemungkinan faktor partisi tidak bisa ditulis atau di modifikasi.
Berikut ini penjelasan dan solusinya.

> Cara ini tidak bisa dilakukan jika hardisk sedang mengalami bad sector atau terdapat kerusakan fisik.

## Dualboot bersama windows.

Jika pengguna dualboot bersama sistem operasi windows 8/10/11 maka sangat disarankan untuk mematikan fitur fast startup, sebab fast startup **tidak** sepenuhnya mematikan komputer. Windows akan mengunci semua partisi ntfs windows, sehingga pengguna tidak bisa mengakses ketika dualboot. Kedua, pengguna juga akan kesulitan untuk mengakses pengaturan BIOS/UEFI di sistemnya.

Sudah kami terangkan juga bahwa persiapan untuk pengguna windows untuk mematikan fast startup sudah kami jelaskan diawal. Solusinya tersedia di [halaman ini](../persiapan/windows/fast-startup.md).

## Single boot, terdapat partisi ntfs windows.

Jika sudah terlanjur memasang LangitKetujuh OS atau windowsnya terlanjur dihapus dan belum sempat/lupa mematikan fast startup, maka beberapa partisi `ntfs` lain tidak bisa ditulis/dimodifikasi. Jika terjadi demikian, solusinya menggunakan `ntfsfix`.

Cek partisi yang bermasalah dan tidak bisa dimodifikasi.

```sh
lsblk
```

Contoh keluaran:

```sh
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 119.2G  0 disk
├─sda1   8:1    0   512M  0 part
├─sda2   8:2    0    40G  0 part
└─sda3   8:3    0  78.7G  0 part (HARUS KOSONG)
```

Jangan mengakses partisi yang akan di fiksasi dengan `ntfsfix`, pada bagian `MOUNTPOINTS` harus kosong. Lepaskan dahulu dengan `unmount` jika telah mengakses. Jika tidak dilepaskan, sudah pasti gagal di proses berikutnya.

Misalnya partisi yang bermasalah di `sda3`, unmount dahulu.

```sh
udiskctl unmount -b /dev/sda3
```

Jalankan ntfsfix dengan perintah ini.

```sh
doas ntfsfix /dev/sda3
```

## Single boot, terdapat partisi linux.

Cara ini khusus partisi linux seperti `ext4`, `btrfs`, dsb. Jika pengguna tidak dapat menulis/memodifikasi partisi, kemungkinan hak aksesnya hanya dimiliki oleh root.

Cek partisi yang bermasalah dan tidak bisa dimodifikasi.

```sh
lsblk
```

Contoh keluaran:

```sh
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 119.2G  0 disk
├─sda1   8:1    0   512M  0 part
├─sda2   8:2    0    40G  0 part
└─sda3   8:3    0  78.7G  0 part
```

Misalnya partisi yang bermasalah di `sda3`, mount dahulu.

```sh
udiskctl mount -b /dev/sda3
```

Cek lagi dengan `lsblk`.

```sh
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 119.2G  0 disk
├─sda1   8:1    0   512M  0 part
├─sda2   8:2    0    40G  0 part
└─sda3   8:3    0  78.7G  0 part /run/media/l7/DATA
```

Sebagai contoh partisinya berada di `/run/media/l7/DATA`. Lalu ganti hak aksesnya menjadi user saat ini.

```
doas chown -Rv $USER:$USER /run/media/l7/DATA/*
```

Prosesnya cukup lama tergantung dari banyaknya data yang dimiliki oleh partisi tersebut.
