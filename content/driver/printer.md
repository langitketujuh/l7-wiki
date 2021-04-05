---
title: Printer
weight: 2
draft: false
---

{{< toc >}}

## Epson Printer

Driver Printer Epson (`epson-inkjet-printer-escpr`) sudah terpasang secara otomatis, jadi tinggal ditancapkan saja kabel port USB printernya. Lalu [tambahkan ke pengaturan sistem printer](#pengaturan-sistem-printer).

## Epson Scanner

Driver Epson Scanner dipasang dengan cara:

```shell
get imagescan iscan-data
```

## HP Printer

Driver printer HP (hplip) versi CLI sudah terpasang secara otomatis, namun jika ingin memasang versi GUI maka ketik perintah berikut ini:

```shell
remove hplip
get hplip-gui
```

Lalu [tambahkan ke pengaturan sistem printer](#pengaturan-sistem-printer).

## Canon Printer

Driver Printer Canon hanya bisa dipasang untuk edisi `glibc` saja. Karena propietary, sehingga tidak bisa diporting ke musl. Cara memasang driver printer Canon:

```shell
get cnijfilter2
```

Lalu [tambahkan ke pengaturan sistem printer](#pengaturan-sistem-printer).

## Brother Printer

Pasang Driver printer brother.

```shell
get brother-brlaser
```

Beberapa driver hanya tersedia di glibc saja, karena nonfree.

Nama paket                        | Deskripsi
 :---                             | :---
`get brother-brscan3`             | SANE scanner driver for brscan3-compatible Brother scanners
`get brother-brscan4`             | SANE scanner driver for brscan4-compatible printers
`get brother-dcp197c-cupswrapper` | CUPS wrapper driver for the brother DCP-197C printer/scanner
`get brother-dcp197c-lpr`         | LPR driver for the brother DCP-197C printer/scanner

Lalu [tambahkan ke pengaturan sistem printer](#pengaturan-sistem-printer).

## Open Printing

Secara bawaan openprinting foomatic sudah terpasang secara otomatis kecuali `db-nonfree`. Untuk memasangnya ketik:

```shell
get foomatic-db-nonfree
```

## Pengaturan Sistem Printer

Setelah driver terpasang, langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan secara bawaan. Klik `Finish`.
