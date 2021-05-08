# TLP Power Manajemen

## Fungsi layanan

TLP Mengatur power management agar penggunaan baterai laptop lebih hemat efisien. Anda tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_

## Memasang TLP daemon

```bash
get tlp tlp-rdw
```

## Melihat status tlp

```bash
sudo sv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```bash
sudo ln -s /etc/sv/tlp /var/service/
```

## Menonaktifkan tlp

```bash
sudo rm /var/service/tlp
```

## Menjalankan ulang tlp

```bash
sudo sv restart tlp
```

## Menghapus TLP daemon

```bash
remove tlp tlp-rdw
```
