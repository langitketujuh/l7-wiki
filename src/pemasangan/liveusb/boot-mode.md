# Boot mode

## UEFI

Setelah reboot kemudian masuk ke Live USB, selanjutnya periksa jenis boot mode yang digunakan saat ini. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI. Dan sebaliknya, jika menggunakan legacy maka pastikan masuk kedalam mode legacy.

Cara memeriksa boot mode yaitu dengan mengetik perintah ini di `konsole`.

```
efibootmgr
```

Jika hasilnya ada keluaran daftar EFI `Boot0000`, `Boot9999`, dan seterusnya. Maka boot mode sudah benar dengan menggunakan boot UEFI.

```
➜  ~ efibootmgr
Timeout: 0 seconds
BootOrder: 0000,9999
Boot0000* LangitKetujuh
Boot9999* USB Drive (UEFI)
➜  ~
```

Namun jika hasil keluarannya `EFI variables are not supported on this system.` maka salah masuk boot mode ke legacy. Pengguna perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

Kami menyarankan jika sistem bios mendukung UEFI maka gunakanlah UEFI, karena UEFI lebih modern dari Legacy. Tetapi jika LangitKetujuh tidak mendukung sistem UEFI, maka boleh menggunakan mode legacy. Tetapi diharuskan mengkonversi tipe disk GPT ke MBR agar mendukung legacy (_cara konversi ada di [halaman ini](../sistem-partisi/konversi.html#merubah-gpt-ke-mbr-tanpa-format)_).

## Legacy

Periksa boot mode di `konsole`.

```
efibootmgr
```

Jika hasilnya ada keluaran seperti dibawah ini, maka bootmode menggunakan mode legacy dan itu sudah benar.

```
EFI variables are not supported on this system
```
