# Mengatasi GRUB Hilang

Pastikan Anda masih di mode `chroot`. Langkah-langkahnya ada di panduan sebelumnya.

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

## Keluar mode `chroot`

```
exit
sudo umount -R /mnt
```

## Restart PC/Laptop

```
sudo shutdown -r now
```
