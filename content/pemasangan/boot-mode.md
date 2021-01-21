---
title: Boot Mode
weight: 2
---

## UEFI

Setelah restart kemudian masuk ke Live USB, selanjutnya periksa jenis boot mode. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI, dan sebaliknya jika menggunakan BIOS maka pastikan masuk kedalam mode BIOS.

```
[ -d /sys/firmware/efi ] && echo UEFI || echo BIOS
```

Jika Anda menggunakan UEFI hasilnya keluarannya `UEFI` berarti boot mode Anda sudah benar. Namun jika hasil keluarannya `BIOS` maka Anda perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

## BIOS

Secara bawaan BIOS tidak perlu memeriksa boot mode, karena pemeriksaan boot mode pada tahap ini digunakan untuk UEFI saja.
