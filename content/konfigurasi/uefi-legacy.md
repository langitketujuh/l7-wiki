---
title: UEFI/Legacy
weight: 4
---

## Mode UEFI

Setelah restart kemudian masuk ke Live USB, selanjutnya periksa jenis boot Anda. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI, dan sebaliknya jika menggunakan Legacy maka pastikan masuk kedalam mode Legacy.

```shell
[ -d /sys/firmware/efi ] && echo UEFI || echo Legacy
```

Jika Anda menggunakan Uefi hasilnya keluarannya `Uefi` berarti boot mode Anda sudah benar. Namun jika hasil keluarannya `Legacy` maka Anda perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

## Mode Legacy

Secara bawaan Legacy tidak perlu memeriksa boot mode, karena pemeriksaan boot mode biasanya digunakan untuk UEFI.
