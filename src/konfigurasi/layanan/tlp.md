# TLP

TLP sebagai manajemen baterai laptop agar penggunaannya lebih hemat dan efisien. Pengguna tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_.

## Cara memasang

```sh
doas xbps-install tlp tlp-rdw
```

## Melihat status tlp

```sh
doas sv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```sh
doas ln -s /etc/sv/tlp /var/service/
```

## Menonaktifkan tlp

```sh
doas rm /var/service/tlp
```

## Menjalankan ulang tlp

```sh
doas sv restart tlp
```

## Menghapus tlp daemon

```sh
doas xbps-remove -R tlp tlp-rdw
```
