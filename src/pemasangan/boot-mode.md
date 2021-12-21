# Boot Mode

## UEFI

Setelah restart kemudian masuk ke Live USB, selanjutnya periksa jenis boot mode Anda. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI, dan sebaliknya jika menggunakan legacy maka pastikan masuk kedalam mode legacy.

Cara memeriksa boot mode yaitu dengan mengetik perintah ini di `konsole`.

```
efibootmgr
```

Jika hasilnya ada keluaran daftar EFI `Boot0000`, `Boot9999`, dan seterusnya. Maka boot mode Anda sudah benar menggunakan boot UEFI.

```
➜  ~ efibootmgr
Timeout: 0 seconds
BootOrder: 0000,9999
Boot0000* LangitKetujuh
Boot9999* USB Drive (UEFI)
➜  ~
```

Namun jika hasil keluarannya `EFI variables are not supported on this system.` maka Anda salah masuk boot mode ke legacy. Anda perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

Kami menyarankan jika sistem bios Anda mendukung UEFI maka gunakanlah UEFI, karena UEFI lebih modern dari Legacy. Tetapi jika LangitKetujuh tidak mendukung sistem UEFI mesin Anda maka boleh menggunakan mode legacy di mesin UEFI, tetapi Anda diharuskan mengkonversi tipe disk GPT ke MBR agar mendukung legacy (_cara konversi ada di halaman [sistem partisi](sistem-partisi.html#merubah-gpt-ke-mbr-tanpa-format)_).

## Legacy

Jika keluaran dari `efibootmgr` adalah `EFI variables are not supported on this system.` Maka bootmode menggunakan legacy dan itu sudah benar. Secara bawaan legacy tidak perlu memeriksa boot mode, karena pemeriksaan boot mode pada tahap ini digunakan untuk UEFI saja.
