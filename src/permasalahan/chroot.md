# Mengatasi dengan chroot

## Pengertian chroot

`chroot` merupakan perkakas linux untuk memodifikasi direktori root atau sistem. Melakukan pengendalian dan masuk kedalam sistem root. Sesuai namanya `chroot` yaitu `change root` untuk merubah direktori root dari partisi tertentu.

Contoh kasus, ketika PC Anda tidak bisa masuk ke grafis _display manager_ atau tidak bisa login. Solusinya dengan `chroot` melalui LiveUSB, dengan `chroot` liveusb ini maka pengguna dapat memodifikasi sistem PC/laptop yang tidak bisa login tersebut.

## Persiapan chroot

Sebelum melakukan `chroot` anda diharuskan membuat liveusb jika permasalahan yang anda hadapi yaitu gagal booting. Anda bisa merujuk tautan ini untuk membuat bootable.

- [Bootable Flasdisk di GNU/Linux](http://../persiapan/bootable-linux.md)
- [Bootable Flasdisk di Windows](http://../persiapan/windows.md)

## Mengetahui partisi sendiri

Setelah membuat bootable dan masuk ke desktop, Anda diharuskan tahu partisi mana yang sebagai boot (`/boot` atau `/boot/efi`) di PC/Laptop Anda.

Misalnya:
- `/dev/sda1` sebagai `/boot`
- `/dev/sda2` sebagai `/`

Anda bisa partisinya melalui perintah `disk` atau `lsblk`.

## Masuk ke sistem (Mode chroot)

Dari contoh partisi tersebut yaitu:

- `/dev/sda1` sebagai `/boot`
- `/dev/sda2` sebagai `/`

Maka perintah yang dijalankan adalah berikut ini.

Mounting partisi root `sda2`

```
sudo mount /dev/sda2 /mnt/
```

Mounting partisi boot `sda1`.

Jika menggunakan mode Legacy:

```
sudo mkdir -p /mnt/boot
sudo mount /dev/sda1 /mnt/boot
```

Jika menggunakan mode UEFI:

```
sudo mkdir -p /mnt/boot/efi
sudo mount /dev/sda1 /mnt/boot/efi
```

Mounting `/sys` `/dev` dan `/proc`

```
sudo mount --rbind /sys /mnt/sys && sudo mount --make-rslave /mnt/sys
sudo mount --rbind /dev /mnt/dev && sudo mount --make-rslave /mnt/dev
sudo mount --rbind /proc /mnt/proc && sudo mount --make-rslave /mnt/proc
```

### Masuk ke mode chroot

```
sudo chroot /mnt/ /bin/fish
```

Setelah selesai, Anda dapat memodifikasi sistem PC/laptop tersebut seperti:

- [Mengatasi Grub Hilang](grub.md)

## Keluar dari mode `chroot`

```
exit
sudo umount -R /mnt
```

## Restart PC/Laptop

```
sudo shutdown -r now
```
