# Mengatasi Grub Hilang

Pastikan Anda masih di mode `chroot`. Langkah-langkahnya ada di [panduan sebelumnya](chroot.md).

## Memasang grub

Setelah masuk ke chroot, pastikan `l7-tools` di liveusb sudah menggunakan versi terbaru `1.18.10+`. Jika belum terbaru jalankan perintah ini.

```
doas xbps-install -Sy l7-tools
```

Kemudian jalankan l7-tools.

```
l7-tools --grub
```

- `Boot mode uefi:` ketik `y` jika menggunakan uefi, ketik `n` jika menggunakan legacy.
- Khusus legacy diharuskan memilih bootloader, misalnya `sda`.
- `Continue install grub:`, ketik `y` untuk melanjutkan.

Secara otomatis grub akan terpasang sesuai bootmode yang digunakan.
