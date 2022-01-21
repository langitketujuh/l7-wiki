# Uncomplicated Firewall (UFW)

`UFW` adalah kepanjangan dari Uncomplicated Firewall sebuah aplikasi front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika Anda mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```bash
doas ufw enable
```

## Menonaktifkan UFW

```bash
doas ufw disable
```

## Melihat status dan aplikasi yang difilter

```bash
doas ufw status numbered
```

## Mengecek aplikasi yang didukung

```bash
doas ufw app list
```

## Mengizinkan jaringan aplikasi

```bash
doas ufw allow 'APLIKASI'
```

## Mengizinkan aplikasi

```bash
doas ufw allow 'CUPS'
doas ufw allow 'KDE Connect'
doas ufw allow 'SSH'
doas ufw allow 'VNC'
```

Opsional

```bash
doas ufw allow 'HPLIP'
doas ufw allow 'Ktorrent'
```

## Mencegah jaringan aplikasi

```bash
doas ufw deny 'APLIKASI'
```

## Menghapus daftar aplikasi

Lihat daftar aplikasi sesuai nomernya

```bash
doas ufw status numbered
```

Pilih aplikasi yang akan dihapus berdasarkan nomernya

```bash
doas ufw delete NOMER
```

Contoh:
```bash
doas ufw delete 7
```

## Manual UFW

```bash
man ufw
```
