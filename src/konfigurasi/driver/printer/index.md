# Printer & scanner

## Epson Printer

Driver Printer Epson `epson-inkjet-printer-escpr` sudah terpasang secara otomatis. Pengguna hanya memasukkan kabel printer ke port USB. Kemudian tambahkan daftar printer ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Epson Scanner

Driver Epson Scanner dipasang dengan cara:

```sh
get imagescan iscan-data
```

## HP Printer

Pengguna dapat melihat model printer HP yang didukung oleh `hplip` di [daftar ini](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index). Driver printer HP versi cli sudah terpasang secara otomatis, namun jika ingin memasang versi GUI maka ketik perintah berikut ini:

Menghapus versi cli.

```sh
remove hplip
```

Memasang versi gui.

```sh
get hplip-gui
```

Kemudian tambahkan daftar printer ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Canon Printer

Driver Printer Canon hanya bisa dipasang untuk edisi `glibc` saja. Karena proprietary, sehingga tidak bisa diporting ke musl. Cara memasang driver printer Canon:

```sh
get cnijfilter2
```

Kemudian tambahkan daftar printer ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Brother Printer

Pasang Driver printer brother.

```sh
get brother-brlaser
```

Beberapa driver hanya tersedia di glibc saja, karena driver yang tidak terbuka.

| Perintah                          | Deskripsi                                                    |
| :-------------------------------- | :----------------------------------------------------------- |
| `get brother-brscan3`             | SANE scanner driver for brscan3-compatible Brother scanners  |
| `get brother-brscan4`             | SANE scanner driver for brscan4-compatible printers          |
| `get brother-dcp197c-cupswrapper` | CUPS wrapper driver for the brother DCP-197C printer/scanner |
| `get brother-dcp197c-lpr`         | LPR driver for the brother DCP-197C printer/scanner          |

Kemudian tambahkan daftar printer ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Open Printing

Secara bawaan openprinting foomatic sudah terpasang secara otomatis kecuali `db-nonfree`. Untuk memasangnya ketik:

```sh
get foomatic-db-nonfree
```

## Pengaturan Sistem Printer

Setelah driver terpasang, langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.
