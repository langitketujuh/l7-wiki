---
title: Sistem Boot
weight: 2
---

## BIOS Menu

Nonaktifkan sementara beberapa fitur BIOS dibawah ini.

* Quick Boot: `Disabled`
* Fast Boot: `Disabled`
* CSM: `Disabled`
* Secure Boot: `Disabled`

Jika Secure boot tidak aktif/muncul, maka buatlah kata sandi bios dahulu. Kata sandi yang digunakan misalnya `123`

- Ke bagian tab `Security`
- Pilih `Set supervisor password`
- ketik `123`
- ketik lagi `123`
- Pilih `Set user password`
- ketik `123`
- ketik lagi `123`
- Ke bagian tab `Boot`
- Pilih `Secure boot:` `Disabled`

## Boot Order

* Jika menggunakan BIOS pastikan USB berada di posisi paling atas.
* Jika menggunakan UEFI, biasanya muncul 2 boot order Flasdisk di BIOS Menu. Pastikan USB UEFI berada di posisi paling atas.

## Boot Mode

Jika menggunakan UEFI pastikan `Boot mode:` menggunakan `UEFI` atau `UEFI Only`. Untuk BIOS sendiri secara otomatis masuk ke boot mode BIOS sendiri.

## Restart

Jika sudah diatur pengaturan BIOS Menu tekan F10 untuk menyimpan, lalu restart otomatis masuk ke Live USB LangitKetujuh.
