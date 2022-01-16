# Mengatasi Grub Hilang

Pastikan Anda masih di mode `chroot`. Langkah-langkahnya ada di [panduan sebelumnya](chroot.md).

## Memasang grub

```
l7-tools --grub
```

- `Boot mode UEFI:` ketik `y` jika menggunakan uefi, ketik `n` jika menggunakan legacy.
- Khusus legacy diharuskan memilih bootloader, misalnya `sda`.
- `Continue install grub:`, ketik `y` untuk melanjutkan.

Secara otomatis grub akan terpasang sesuai bootmode yang digunakan.
