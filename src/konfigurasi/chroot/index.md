# Chroot mode

## Pengertian chroot

`chroot` merupakan perkakas linux untuk memodifikasi direktori root atau sistem. Melakukan pengendalian dan masuk kedalam sistem root. Sesuai namanya `chroot` yaitu `change root` untuk merubah direktori root dari partisi tertentu.

Contoh kasus, ketika komputer pengguna tidak bisa masuk ke grafis _display manager_ atau tidak bisa login. Solusinya dengan `chroot` melalui LiveUSB, dengan `chroot` liveusb ini maka pengguna dapat memodifikasi sistem komputer yang tidak bisa login tersebut.

## Persiapan chroot

Sebelum melakukan `chroot` anda harus menyiapkan sistem operasi LangitKetujuh lain yang sudah terpasang atau menggunakan bootable liveusb. Pengguna dapat merujuk ke tautan ini untuk membuat bootable.

- [Bootable Flasdisk di GNU/Linux](../../persiapan/bootable/gnulinux.md)
- [Bootable Flasdisk di Windows](../../persiapan/bootable/windows.md)

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

Secara otomatis akan masuk ke mode chroot. Kemudian pengguna dapat memodifikasi sistem komputer tersebut seperti [memasang ulang grub](../grub/pasang-ulang.md).
