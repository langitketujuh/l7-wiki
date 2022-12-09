# Uncomplicated Firewall (UFW)

`UFW` adalah kepanjangan dari Uncomplicated Firewall sebuah perangkat lunak front-end dari iptables yang ringan, powerful dan sangat mudah digunakan untuk mengatur firewall. UFW ini adalah front-end dari iptables (pengaturan Firewall tingkat lanjut). Jadi dengan kata lain ketika pengguna mengatur firewall dengan UFW maka sama saja mengatur firewall di iptables.

## Mengaktifkan UFW

```
doas ufw enable
```

## Menonaktifkan UFW

```
doas ufw disable
```

## Melihat status dan perangkat lunak yang difilter

```
doas ufw status numbered
```

## Mengecek perangkat lunak yang didukung

```
doas ufw app list
```

## Mengizinkan jaringan perangkat lunak

```
doas ufw allow 'APLIKASI'
```

## Mengizinkan perangkat lunak

```
doas ufw allow 'CUPS'
doas ufw allow 'KDE Connect'
doas ufw allow 'SSH'
doas ufw allow 'VNC'
```

Opsional

```
doas ufw allow 'HPLIP'
doas ufw allow 'Ktorrent'
```

## Mencegah jaringan perangkat lunak

```
doas ufw deny 'APLIKASI'
```

## Menghapus daftar perangkat lunak

Lihat daftar perangkat lunak sesuai nomernya

```
doas ufw status numbered
```

Pilih perangkat lunak yang akan dihapus berdasarkan nomernya

```
doas ufw delete NOMER
```

Contoh:
```
doas ufw delete 7
```

## Manual UFW

```
man ufw
```
