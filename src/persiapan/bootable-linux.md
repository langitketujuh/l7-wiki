# Bootable Flasdisk di GNU/Linux

## Cadangkan data Flasdisk Anda

Ketika membuat bootable USB pastikan data penting didalam flasdisk sudah dicadangkan ke disk eksternal atau cloud agar aman.
Anda dapat membuat bootable USB dengan salah satu aplikasi dibawah ini.

## isoimagewriter

- Buka aplikasi isoimagewriter, biasanya di menu dengan nama "ISO Image Writer"
- Klik pada kolom "Write this ISO Image"
- Pilih iso langitketujuh
- Klik pada kolom "To this USB Drive"
- Pilih flashdisk yang akan dijadikan bootable
- Pilih "Create"
- Tunggu sampai selesai

<video controls poster="../media/video/isoimagewriter-bootable-usb-langitketujuh.webp" style="position: relative; width: 100%; height: auto; border:0;" >
  <source src="../media/video/isoimagewriter-bootable-usb-langitketujuh.webm" type="video/webm">
</video>

## ddgtk

- Buka aplikasi ddgtk, biasanya di menu dengan nama "DDgtk Bootable Disk Creator"
- Klik pada kolom "Choose an ISO"
- Pilih iso langitketujuh
- Klik pada kolom "Select a device"
- Pilih flashdisk yang akan dijadikan bootable
- Klik "Start"
- Tunggu sampai selesai

## imagewriter

- Buka aplikasi imagewriter, biasanya di menu dengan nama "SUSE Studio Imagewriter"
- Klik pada area tengah
- Pilih iso langitketujuh
- Dikolom bawah, pilih flashdisk yang akan dijadikan bootable
- Klik "Write"
- Tunggu sampai selesai

## mintstick (LinuxMint)

- Buka aplikasi mint-stick, biasanya di menu dengan nama "USB Image Writer"
- Klik pada kolom "Write Image"
- Pilih iso langitketujuh
- Klik pada kolom "to"
- Pilih flashdisk yang akan dijadikan bootable
- Klik "Write"
- Tunggu sampai selesai

## live-usb-maker (MX linux)

- Buka aplikasi live-usb-maker, biasanya di menu dengan nama "MX Live USB Maker"
- Masukkkan kata sandi root
- Klik pada kolom "Select target USB Device"
- Pilih flashdisk yang akan dijadikan bootable
- Klik pada kolom "Select ISO file"
- Pilih iso langitketujuh
- Pada bagian "Mode"
- Ceklis "Image mode - read only LiveUSB (dd)"
- Klik "Next"
- Tunggu sampai selesai, klik "Ok" dan "Close"

## gnome-disk

- Buka aplikasi gnome-disk, biasanya di menu dengan nama "Disks"
- Klik nama flasdisk yang akan dijadikan bootable
- Klik ikon 3 titik, pilih "Format Disk"
- Muncul dialog format, pilih "Format", pilih "Format" lagi
- Klik ikon 3 titik, pilih "Restore DIsk Image"
- Pada bagian kotak "Image to Restore", pilih iso langitketujuh
- Klik "Start Restoring..."
- Klik "Restore"
- Tunggu sampai selesai

## bootiso (cli disarankan)

- Buka folder yang berisi iso langitketujuh.
- Klik kanan, pilih "Actions".
- Pilih "Open Terminal Here".
- Pastikan Flasdisk sudah tertancap.
- Ketik `bootiso langitketujuh[tekan tab]`.
- Tunggu sampai proses menyalin selesai.

Pada video dibawah ini menggunakan Flasdisk `Sandisk` sebagai contoh.

<video controls poster="../media/video/bootiso-bootable-usb-langitketujuh.webp" style="position: relative; width: 100%; height: auto; border:0;" >
  <source src="../media/video/bootiso-bootable-usb-langitketujuh.webm" type="video/webm">
</video>

## dd (cli)
Cek letak path flashdisk dengan `lsblk`.
Contoh keluaran:

```bash
➜  lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:16   0 149.1G  0 disk 
├─sda1   8:17   0     1G  0 part /boot
└─sda2   8:18   0   148G  0 part /
sdb      8:32   0 465.8G  0 disk 
└─sdb1   8:33   0 465.8G  0 part /home
sdc      8:48   1  14.6G  0 disk 
├─sdc1   8:49   1   2.4G  0 part 
└─sdc2   8:50   1    32M  0 part
```

Pada informasi diatas `sdc` adalah flashdisk dengan ukuran 14.6GB

- Buka folder yang berisi iso langitketujuh.
- Klik kanan, pilih "Actions".
- Pilih "Open Terminal Here".
- Pastikan Flasdisk sudah tertancap.
- Ketik `sudo dd if=langitketujuh[tekan tab] of=/dev/sdc bs=1M status=progress oflag=sync`.
- Tunggu sampai proses menyalin selesai.