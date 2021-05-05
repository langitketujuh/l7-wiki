# UFW Firewall

## Pengertian Firewall

Firewall adalah suatu sistem perangkat lunak yang mengizinkan lalu lintas jaringan yang dianggap aman untuk bisa melaluinya dan mencegah lalu lintas jaringan yang dianggap tidak aman.

`UFW` adalah singkatan dari Uncomplicated Firewall sebuah aplikasi front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika Anda mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```bash
sudo ufw enable
```

## Menonaktifkan UFW

```bash
sudo ufw disable
```

## Melihat status dan aplikasi yang difilter

```bash
sudo ufw status numbered
```

## Mengecek aplikasi yang didukung

```bash
sudo ufw app list
```

## Mengizinkan jaringan aplikasi

```bash
sudo ufw allow 'APLIKASI'
```

## Aplikasi yang disarankan untuk diizinkan

```bash
sudo ufw allow 'CUPS'
sudo ufw allow 'KDE Connect'
sudo ufw allow 'SSH'
sudo ufw allow 'VNC'
```

Opsional

```bash
sudo ufw allow 'HPLIP'
sudo ufw allow 'Ktorrent'
```

## Mencegah jaringan aplikasi

```bash
sudo ufw deny 'APLIKASI'
```

## Menghapus daftar aplikasi

Lihat daftar aplikasi sesuai nomernya

```bash
sudo ufw status numbered
```

Pilih aplikasi yang akan dihapus berdasarkan nomernya

```bash
sudo ufw delete NOMER
```

Contoh:
```bash
sudo ufw delete 7
```

## Panduan lebih lengkap mengenai UFW

```bash
man ufw
```
