---
title: Bootable Windows
weight: 4
---

{{< hint danger >}}
**Cadangkan data flasdisk Anda**\
Ketika membuat bootable USB pastikan data penting didalam flasdisk sudah dicadangkan ke disk eksternal atau cloud agar aman.
{{< /hint >}}

{{< toc >}}

Anda dapat membuat bootable USB dengan salah satu aplikasi dibawah ini.

## Rosa images

{{< button href="http://wiki.rosalab.ru/en/index.php/ROSA_ImageWriter" >}}Unduh Rosa Image{{< /button >}}

- Klik "for Windows" untuk mengunduh versi windows
- Setelah selesai mengunduh, klik kakan pilih "Extract Here"
- Jalankan aplikasi "RosaImageWriter.exe", klik 2 kali
- Klik pada kolom "Image"
- Pilih iso langitketujuh
- Klik pada kolom "USB Device"
- Pilih flashdisk yang akan dijadikan bootable
- Pilih "Write"
- Muncul peringatan format flashdisk, pilih "Yes"
- Tunggu sampai selesai, klik "OK"

## Rufus

{{< button href="https://rufus.ie" >}}Unduh Rufus{{< /button >}}

- Pilih versi terbaru. "Rufus 3.13" misalnya
- Jalankan aplikasi "rufus-x.x.exe", klik 2 kali
- Klik pada kolom "Device"
- Pilih flashdisk yang akan dijadikan bootable
- Klik pada kolom "Boot Selection"
- Pilih "Disk or ISO Image"
- Klik "SELECT"
- Pilih iso langitketujuh
- Klik pada kolom "Partition Scheme"
- Pilih "MBR"
- Klik pada kolom "Target system"
- Pilih "BIOS or UEFI"
- Klik "START"
- Muncul dialog "ISOHybrid image detected"
- Klik "Write in DD image mode", klik "OK"
- Muncul peringatan format flashdisk, klik "OK"
- Tunggu sampai selesai. Jika sudah "READY" klik "CLOSE".

## Balena Etcher

{{< hint warning >}}
**Ukuran file terlalu besar**\
Tidak direkomendasikan karena ukuran aplikasi melebihi 100Mb.
{{< /hint >}}
