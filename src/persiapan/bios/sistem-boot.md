# Sistem Boot

## Bios menu

Saat masuk ke bios menu, akan ada beberapa pengaturan di bios menu dan boot mode yang akan digunakan. Nonaktifkan sementara beberapa fitur bios dibawah ini. Jika sudah selesai pemasangan LangitKetujuh maka bisa dikembalikan seperti semula.

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

Ada 2 jenis Boot mode, yaitu Legacy dan UEFI.

Jika menggunakan legacy, secara otomatis masuk ke boot mode legacy sendiri dan tidak perlu diatur lagi. Sedangkan, jika menggunakan UEFI pastikan `Boot mode:` menggunakan `UEFI` atau `UEFI Only`.

## Boot Order/Sequence

Kami menyarankan menggunakan boot mode UEFI jika bios mendukung. Jika mendukung UEFI, letakkan UEFI USB paling atas (biasanya muncul 2 boot order flasdisk di bios menu). Tetapi jika bios hanya mendukung legacy saja, maka USB biasa yang diposisikan paling atas.

Sebagai contoh, di komputer yang memiliki boot order yang seperti ini.

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

Jika sudah diatur pengaturan bios menu, pilih **Save** (biasanya tekan `F10` untuk menyimpan). Lalu komputer akan mereboot secara otomatis dan masuk ke LiveUSB LangitKetujuh.)
