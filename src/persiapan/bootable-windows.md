# Bootable Flasdisk di Windows

## Cadangkan Data Flasdisk Anda

Ketika membuat bootable USB pastikan data penting didalam flasdisk sudah dicadangkan ke disk eksternal atau cloud agar aman.
Anda dapat membuat bootable USB dengan salah satu aplikasi dibawah ini.

## Ventoy
[Unduh Ventoy](https://github.com/ventoy/Ventoy/releases)

- Unduh Ventoy terbaru. Misalnya `ventoy-1.0.46-windows.zip`
- Setelah selesai mengunduh, klik kakan pilih "Extract Here"
- Masuk ke folder `ventoy-1.0.46` (versi `1.0.46` hanya sebagai contoh).
- Jalankan "Ventoy2Disk.exe" dengan mengklik dua kali.
- Pada bagian Device pilih nama flasdisk. Misalnya `F: [4GB] Sandisk`.
- Klik "Install".
- Jika muncul peringatan, klik "Yes" dua kali.
- Jika sukses, klik "OK".
- Copy iso langitketujuh yang sudah diunduh, lalu paste ke Flasdisk yang berlabel `Ventoy`.
- Selesai.

## Rufus

[Unduh Rufus](https://rufus.ie)

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
- Klik "Write in DD image mode" (PENTING), klik "OK"
- Muncul peringatan format flashdisk, klik "OK"
- Tunggu sampai selesai. Jika sudah "READY" klik "CLOSE".

## Rosa images

[Unduh Rosa Image](http://wiki.rosalab.ru/en/index.php/ROSA_ImageWriter)

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

## Balena Etcher

Ukuran berkas Etcher terlalu besar, kami tidak direkomendasikannya karena ukuran aplikasi melebihi 100Mb.
