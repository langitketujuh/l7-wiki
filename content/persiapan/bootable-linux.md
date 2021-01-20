---
title: Bootable Linux
weight: 4
---

Anda dapat membuat bootable USB dengan salah satu aplikasi dibawah ini.

### isoimagewriter
- Buka aplikasi isoimagewriter, biasanya di menu dengan nama "ISO Image Writer"
- Klik pada kolom "Write this ISO Image"
- Pilih iso langitketujuh
- Klik pada kolom "To this USB Drive"
- Pilih flashdisk yang akan dijadikan bootable
- Pilih "Create"
- Tunggu sampai selesai

### ddgtk
- Buka aplikasi ddgtk, biasanya di menu dengan nama "DDgtk Bootable Disk Creator"
- Klik pada kolom "Choose an ISO"
- Pilih iso langitketujuh
- Klik pada kolom "Select a device"
- Pilih flashdisk yang akan dijadikan bootable
- Klik "Start"
- Tunggu sampai selesai

### gnome-disk
- Buka aplikasi gnome-disk, biasanya di menu dengan nama "Disks"
- Klik nama flasdisk yang akan dijadikan bootable
- Klik ikon 3 titik, pilih "Format Disk"
- Muncul dialog format, pilih "Format", pilih "Format" lagi
- Klik ikon 3 titik, pilih "Restore DIsk Image"
- Pada bagian kotak "Image to Restore", pilih iso langitketujuh
- Klik "Start Restoring..."
- Klik "Restore"
- Tunggu sampai selesai

### imagewriter
- Buka aplikasi imagewriter, biasanya di menu dengan nama "SUSE Studio Imagewriter"
- Klik pada area tengah
- Pilih iso langitketujuh
- Dikolom bawah, pilih flashdisk yang akan dijadikan bootable
- Klik "Write"
- Tunggu sampai selesai

### bootiso (cli)
`bootiso -a langitketujuh*.iso`

### dd (cli)
Cek letak path flashdisk dengan `lsblk`. Jika `sdb` maka

`sudo dd if=langitketujuh*.iso of/dev/sdb bs=1M status=progress oflag=sync`
