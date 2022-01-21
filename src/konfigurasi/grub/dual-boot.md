# Dual Boot

Ketika selesai memasang sistem operasi LangitKetujuh bersama Windows atau Distribusi GNU/Linux lain, setelah dimuat ulang (reboot) biasanya tidak otomatis menampilkan daftar menu sistem operasi lain di grub menu. Hal ini memerlukan pendeteksian jika ada berkas efi atau partisi boot yang mengandung sistem operasi lain. Didalam LangitKetujuh sudah ada `os-prober` untuk membuat daftar di grub menu. Tetapi kami sudah membuat rancangan dengan khusus dengan `l7-tools` agar mendeteksi otomatis jika menggunakan uefi atau legacy, single boot atau dualboot.

```
doas l7-tools --patch
```
