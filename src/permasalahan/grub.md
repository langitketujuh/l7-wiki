# Mengatasi GRUB Hilang

Pastikan Anda masih di mode `chroot`. Langkah-langkahnya ada di [panduan sebelumnya](chroot.md).

Jika Anda memasang GRUB di boot mode Legacy/DOS:

```
xbps-install grub
grub-install /dev/sda
```

Jika Anda memasang GRUB di boot mode UEFI:

```
xbps-install grub-x86_64-efi
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id="LangitKetujuh"
```

Khusus untuk dualboot. Jalankan perintah dibawah ini 1 kali saja.

```
echo 'GRUB_DISABLE_OS_PROBER=false' >> /etc/default/grub
```

Perintah tersebut untuk mengizinkan `os-prober` untuk mendeteksi sistem operasi di partisi lain.

Lalu update grub.

```
sudo os-prober
sudo update-grub
```

## Keluar mode `chroot`

```
exit
sudo umount -R /mnt
```

## Restart PC/Laptop

```
sudo shutdown -r now
```

Setelah direstart tetapi tidak terdeteksi sistem operasi lain, ulangi update grub.

```
sudo os-prober
sudo update-grub
```
