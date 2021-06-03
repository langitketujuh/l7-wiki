# Boot Mode

## UEFI

Setelah restart kemudian masuk ke Live USB, selanjutnya periksa jenis boot mode Anda. Jika menggunakan UEFI maka pastikan masuk kedalam mode UEFI, dan sebaliknya jika menggunakan BIOS maka pastikan masuk kedalam mode BIOS.

Cara memeriksa boot mode yaitu dengan mengetik perintah `efibootmgr` di `konsole`. Jika hasilnya ada keluaran daftar EFI boot, maka boot mode Anda sudah benar. Namun jika hasil keluarannya `EFI variables are not supported on this system.` maka Anda salah masuk boot mode (mode legacy). Anda perlu mengatur kembali boot order di bios menu agar masuk kedalam mode UEFI.

Kami menyarankan jika sistem bios Anda mendukung UEFI maka gunakanlah UEFI, karena UEFI lebih modern dari dari Legacy. Tetapi jika LangitKetujuh tidak mendukung sistem UEFI mesin Anda maka boleh menggunakan mode Legacy di mesin UEFI.

## Legacy/BIOS

Jika keluaran dari `efibootmgr` adalah `EFI variables are not supported on this system.` Maka bootmode menggunakan Legacy/BIOS dan itu sudah benar. Secara bawaan BIOS tidak perlu memeriksa boot mode, karena pemeriksaan boot mode pada tahap ini digunakan untuk UEFI saja.
