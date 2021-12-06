# Sistem Boot

## Bios Menu

Nonaktifkan sementara beberapa fitur BIOS dibawah ini. Jika sudah selesai pemasangan LangitKetujuh maka bisa dikembalikan seperti semula.

* Quick Boot: `Disabled`
* Fast Boot: `Disabled`
* CSM: `Disabled`
* Secure Boot: `Disabled`

Jika Secure boot tidak aktif/muncul, maka buatlah kata sandi bios dahulu. Kata sandi yang digunakan misalnya `123`.

- Ke bagian tab `Security`
- Pilih `Set supervisor password`
- ketik `123`
- ketik lagi `123`
- Pilih `Set user password`
- ketik `123`
- ketik lagi `123`
- Ke bagian tab `Boot`
- Pilih `Secure boot: Disabled`

## Boot Mode

Ada 2 jenis Boot mode, yaitu BIOS (Legacy) dan UEFI.

Jika menggunakan BIOS, secara otomatis masuk ke boot mode BIOS sendiri dan tidak perlu diatur lagi. Sedangkan, jika menggunakan UEFI pastikan `Boot mode:` menggunakan `UEFI` atau `UEFI Only`.

## Boot Order atau Boot Sequence

Jika menggunakan BIOS pastikan USB berada di posisi paling atas. Sedangkan, jika menggunakan UEFI biasanya muncul 2 boot order Flasdisk di BIOS Menu. Pastikan Flasdisk sudah tertancap dan USB UEFI berada di posisi paling atas.

Kami menyarankan menggunakan boot mode UEFI jika bios Anda mendukung. Jika mendukung UEFI, letakkan UEFI USB paling atas. Tetapi jika bios Anda hanya mendukung Legacy, USB biasa yang diposisikan paling atas.

Sebagai contoh di mesin PC atau laptop Anda memiliki boot order yang seperti ini.

* SSD: Adata SU128
* HDD: Seagate 1 TB
* Network:
* DVDR X
* UEFI: USB Sandisk
* USB Sandisk

Menjadi seperti ini:

* **UEFI: USB Sandisk** (posisi paling atas)
* **USB Sandisk** (posisi kedua)
* SSD: Adata SU128
* HDD: Seagate 1 TB
* Network:
* DVDR X

Cara menaikkan posisi boot order bisa menggunakan `F6` atau `F5` untuk model tertentu.

## Reboot

Jika sudah diatur pengaturan BIOS Menu, pilih **Save** (biasanya tekan `F10` untuk menyimpan). Lalu PC/Laptop akan mereboot secara otomatis dan masuk ke LiveUSB LangitKetujuh.
