# Printer & Scanner Driver

## Epson Printer

Driver Printer Epson (`epson-inkjet-printer-escpr`) sudah terpasang secara otomatis, ditancapkan kabel port USB printer kemudian tambahkan ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Epson Scanner

Driver Epson Scanner dipasang dengan cara:

```bash
sudo xbps-install imagescan iscan-data
```

## HP Printer

Anda dapat melihat model printer HP yang didukung oleh `hplip` di [tautan ini](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index). Driver printer HP versi cli sudah terpasang secara otomatis, namun jika ingin memasang versi GUI maka ketik perintah berikut ini:

Menghapus versi cli.

```bash
sudo xbps-remove -R hplip
```

Memasang versi gui.

```bash
sudo xbps-install hplip-gui
```

Kemudian tambahkan ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Canon Printer

Driver Printer Canon hanya bisa dipasang untuk edisi `glibc` saja. Karena propietary, sehingga tidak bisa diporting ke musl. Cara memasang driver printer Canon:

```bash
sudo xbps-install cnijfilter2
```

Kemudian tambahkan ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Brother Printer

Pasang Driver printer brother.

```bash
sudo xbps-install brother-brlaser
```

Beberapa driver hanya tersedia di glibc saja, karena driver yang tidak bebas.

Perintah                          | Deskripsi
 :---                             | :---
`sudo xbps-install brother-brscan3`             | SANE scanner driver for brscan3-compatible Brother scanners
`sudo xbps-install brother-brscan4`             | SANE scanner driver for brscan4-compatible printers
`sudo xbps-install brother-dcp197c-cupswrapper` | CUPS wrapper driver for the brother DCP-197C printer/scanner
`sudo xbps-install brother-dcp197c-lpr`         | LPR driver for the brother DCP-197C printer/scanner

Kemudian tambahkan ke [pengaturan sistem printer](#pengaturan-sistem-printer).

## Open Printing

Secara bawaan openprinting foomatic sudah terpasang secara otomatis kecuali `db-nonfree`. Untuk memasangnya ketik:

```bash
sudo xbps-install foomatic-db-nonfree
```

## Pengaturan Sistem Printer

Setelah driver terpasang, langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.
