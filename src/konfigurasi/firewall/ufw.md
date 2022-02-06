# Uncomplicated Firewall (UFW)

`UFW` adalah kepanjangan dari Uncomplicated Firewall sebuah perangkat lunak front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika pengguna mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```sh
doas ufw enable
```

## Menonaktifkan UFW

```sh
doas ufw disable
```

## Melihat status dan perangkat lunak yang difilter

```sh
doas ufw status numbered
```

## Mengecek perangkat lunak yang didukung

```sh
doas ufw app list
```

## Mengizinkan jaringan perangkat lunak

```sh
doas ufw allow 'APLIKASI'
```

## Mengizinkan perangkat lunak

```sh
doas ufw allow 'CUPS'
doas ufw allow 'KDE Connect'
doas ufw allow 'SSH'
doas ufw allow 'VNC'
```

Opsional

```sh
doas ufw allow 'HPLIP'
doas ufw allow 'Ktorrent'
```

## Mencegah jaringan perangkat lunak

```sh
doas ufw deny 'APLIKASI'
```

## Menghapus daftar perangkat lunak

Lihat daftar perangkat lunak sesuai nomernya

```sh
doas ufw status numbered
```

Pilih perangkat lunak yang akan dihapus berdasarkan nomernya

```sh
doas ufw delete NOMER
```

Contoh:
```sh
doas ufw delete 7
```

## Manual UFW

```sh
man ufw
```
