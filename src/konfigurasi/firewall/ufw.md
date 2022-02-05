# Uncomplicated Firewall (UFW)

`UFW` adalah kepanjangan dari Uncomplicated Firewall sebuah perangkat lunak front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika pengguna mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```bash
doas ufw enable
```

## Menonaktifkan UFW

```bash
doas ufw disable
```

## Melihat status dan perangkat lunak yang difilter

```bash
doas ufw status numbered
```

## Mengecek perangkat lunak yang didukung

```bash
doas ufw app list
```

## Mengizinkan jaringan perangkat lunak

```bash
doas ufw allow 'APLIKASI'
```

## Mengizinkan perangkat lunak

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

## Mencegah jaringan perangkat lunak

```bash
doas ufw deny 'APLIKASI'
```

## Menghapus daftar perangkat lunak

Lihat daftar perangkat lunak sesuai nomernya

```bash
doas ufw status numbered
```

Pilih perangkat lunak yang akan dihapus berdasarkan nomernya

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
