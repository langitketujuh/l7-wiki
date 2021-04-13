---
title: Boot mode
weight: 1
draft: false
---

## UEFI

Setelah restart kemudian masuk ke Live USB, selanjutnya periksa jenis boot mode. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI, dan sebaliknya jika menggunakan BIOS maka pastikan masuk kedalam mode BIOS.

Jika Anda menggunakan UEFI, ketik perintah `efibootmgr`. Jika hasilnya keluarannya daftar EFI boot berarti boot mode Anda sudah benar. Namun jika hasil keluarannya `EFI variables are not supported on this system.` maka Anda perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

## BIOS

Jika keluaran dari `efibootmgr` adalah `EFI variables are not supported on this system.` maka bootmode menggunakan Legacy/BIOS dan itu sudah benar. Secara bawaan BIOS tidak perlu memeriksa boot mode, karena pemeriksaan boot mode pada tahap ini digunakan untuk UEFI saja.
