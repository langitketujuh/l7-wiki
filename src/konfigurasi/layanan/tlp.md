# TLP

TLP sebagai manajemen baterai laptop agar penggunaannya lebih hemat dan efisien. Pengguna tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_.

## Cara memasang

```sh
get tlp tlp-rdw
```

## Melihat status tlp

```sh
rsv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```sh
rsv enable tlp
```

## Menonaktifkan tlp

```sh
rsv disable tlp
```

## Menjalankan ulang tlp

```sh
rsv restart tlp
```

## Menghapus tlp daemon

```sh
remove tlp tlp-rdw
```
