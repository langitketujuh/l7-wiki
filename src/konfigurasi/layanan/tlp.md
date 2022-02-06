# TLP

TLP sebagai manajemen baterai laptop agar penggunaannya lebih hemat dan efisien. Pengguna tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_.

## Memasang tlp daemon

```bash
doas xbps-install tlp tlp-rdw
```

## Melihat status tlp

```bash
doas sv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```bash
doas ln -s /etc/sv/tlp /var/service/
```

## Menonaktifkan tlp

```bash
doas rm /var/service/tlp
```

## Menjalankan ulang tlp

```bash
doas sv restart tlp
```

## Menghapus tlp daemon

```bash
doas xbps-remove -R tlp tlp-rdw
```
