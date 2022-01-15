# Mengatasi dengan chroot

## Pengertian chroot

`chroot` merupakan perkakas linux untuk memodifikasi direktori root atau sistem. Melakukan pengendalian dan masuk kedalam sistem root. Sesuai namanya `chroot` yaitu `change root` untuk merubah direktori root dari partisi tertentu.

Contoh kasus, ketika PC Anda tidak bisa masuk ke grafis _display manager_ atau tidak bisa login. Solusinya dengan `chroot` melalui LiveUSB, dengan `chroot` liveusb ini maka pengguna dapat memodifikasi sistem PC/laptop yang tidak bisa login tersebut.

## Persiapan chroot

Sebelum melakukan `chroot` anda diharuskan membuat liveusb jika permasalahan yang anda hadapi yaitu gagal booting. Anda bisa merujuk tautan ini untuk membuat bootable.

- [Bootable Flasdisk di GNU/Linux](http://../persiapan/bootable-linux.md)
- [Bootable Flasdisk di Windows](http://../persiapan/windows.md)

## Mengetahui partisi sendiri

Setelah membuat bootable dan masuk ke desktop, periksa nama dan lokasi partisinya yang Anda gunakan sebelumnya (bukan partisi livecd). Anda bisa melihat partisi melalui perintah `disk` atau `lsblk`.

Contoh partisi:
- `/dev/sda1` sebagai `/boot`
- `/dev/sda2` sebagai `/`

`sda1` atau `sda2` bersifat relatif dan tergantung dari letak partisinya.

## Masuk ke sistem mode chroot

Dari contoh partisi diatas `sda1` sebagai `/boot` dan `sda2` sebagai `/` maka perintah yang dijalankan adalah sebagai berikut.

Pertama, partisi `sda2` kaitkan sebagai sistem root.

```
doas mount /dev/sda2 /mnt/
```

Selanjutnya pilih boot mode sesuai sistem mesin. Kemudian partisi `sda1` kaitkan sebagai boot.

- **Boot mode UEFI:**

  ```
  doas mkdir -p /mnt/boot/efi
  doas mount /dev/sda1 /mnt/boot/efi
  ```

- **Boot mode Legacy:**

  ```
  doas mkdir -p /mnt/boot
  doas mount /dev/sda1 /mnt/boot
  ```

Kemudian kaitkan `/sys` `/dev` dan `/proc`.

```
doas mount --rbind /sys /mnt/sys && doas mount --make-rslave /mnt/sys
doas mount --rbind /dev /mnt/dev && doas mount --make-rslave /mnt/dev
doas mount --rbind /proc /mnt/proc && doas mount --make-rslave /mnt/proc
```

## Masuk ke mode chroot

```
doas chroot /mnt/ /bin/fish
```

Setelah selesai, Anda dapat memodifikasi sistem PC/laptop tersebut seperti:

- [Mengatasi Grub Hilang](grub.md)

## Keluar dari mode `chroot`

```
exit
```

Lepaskan semua kait partisi chroot.

```
doas umount -R /mnt
```

## Restart PC/Laptop

```
doas shutdown -r now
```
