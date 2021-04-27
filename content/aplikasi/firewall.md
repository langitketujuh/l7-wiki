---
title: UFW Firewall
weight: 8
draft: false
---

Firewall adalah suatu sistem perangkat lunak yang mengizinkan lalu lintas jaringan yang dianggap aman untuk bisa melaluinya dan mencegah lalu lintas jaringan yang dianggap tidak aman.

UFW adalah singkatan dari Uncomplicated Firewall sebuah aplikasi front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika Anda mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```shell
sudo ufw enable
```

## Menonaktifkan UFW

```shell
sudo ufw disable
```

## Melihat status dan aplikasi yang difilter

```shell
sudo ufw status numbered
```

## Mengecek aplikasi yang didukung

```shell
sudo ufw app list
```

## Mengizinkan jaringan aplikasi

```shell
sudo ufw allow 'APLIKASI'
```

## Aplikasi yang disarankan untuk diizinkan

```shell
sudo ufw allow 'CUPS'
sudo ufw allow 'KDE Connect'
sudo ufw allow 'SSH'
sudo ufw allow 'VNC'
```

Opsional

```shell
sudo ufw allow 'HPLIP'
sudo ufw allow 'Ktorrent'
```

## Mencegah jaringan aplikasi

```shell
sudo ufw deny 'APLIKASI'
```

## Menghapus daftar aplikasi

Lihat daftar aplikasi sesuai nomernya

```shell
sudo ufw status numbered
```

Pilih aplikasi yang akan dihapus berdasarkan nomernya

```shell
sudo ufw delete NOMER
```

Contoh:
```shell
sudo ufw delete 7
```

## Panduan lebih lengkap mengenai UFW

```shell
man ufw
```
