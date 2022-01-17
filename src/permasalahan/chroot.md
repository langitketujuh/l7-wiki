# Mengatasi dengan chroot

## Pengertian chroot

`chroot` merupakan perkakas linux untuk memodifikasi direktori root atau sistem. Melakukan pengendalian dan masuk kedalam sistem root. Sesuai namanya `chroot` yaitu `change root` untuk merubah direktori root dari partisi tertentu.

Contoh kasus, ketika PC Anda tidak bisa masuk ke grafis _display manager_ atau tidak bisa login. Solusinya dengan `chroot` melalui LiveUSB, dengan `chroot` liveusb ini maka pengguna dapat memodifikasi sistem PC/laptop yang tidak bisa login tersebut.

## Persiapan chroot

Sebelum melakukan `chroot` anda harus menyiapkan sistem operasi LangitKetujuh lain yang sudah terpasang atau menggunakan bootable liveusb. Anda bisa merujuk tautan ini untuk membuat bootable.

- [Bootable Flasdisk di GNU/Linux](http://../persiapan/bootable-linux.md)
- [Bootable Flasdisk di Windows](http://../persiapan/windows.md)

## Mode chroot

Setelah masuk ke liveusb, pastikan sudah memasang `l7-tools` versi terbaru `1.18.10+`. Jika belum terbaru jalankan perintah ini.

```
doas xbps-install -Sy l7-tools
```

Kemudian jalankan chroot.

```
doas l7-tools --chroot
```

- `Root partition:` pilih partisi root, misalnya `sda2`.
- `Boot mode uefi:` ketik `y` jika menggunakan uefi, ketik `n` jika menggunakan legacy.
- `Separate boot bios partition:` ketik `y` jika partisi boot terpisah, ketik `n` jika gabung dengan root.
- `Boot efi/bios partition:` pilih partisi boot efi atau bios yang terpisah, misalnya `sda1`.

Secara otomatis akan masuk ke mode chroot. Kemudian Anda dapat memodifikasi sistem PC/laptop tersebut seperti [mengatasi grub hilang](grub.md).
