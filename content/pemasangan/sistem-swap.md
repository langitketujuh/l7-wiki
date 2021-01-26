---
title: Sistem swap
weight: 2
draft: false
---

## ZRAM

ZRAM adalah salah satu fitur dari modul kernel yang bertujuan untuk menggunakan ruang sisa ram sebagai memori cache terkompresi. Secara bawaan zram sudah aktif dengan porsi 25% dari ram fisik.

**Ram fisik** | **ZRAM (25%)**  | **RAM total**
:---          | :---            | :---
**2 GiB**     | 256 MiB         | 2.3 GiB
**4 GiB**     | 1 GiB           | 5 GiB
**8 GiB**     | 2 GiB           | 10 GiB
**16 GiB**    | 4 GiB           | 20 GiB
**+16 GiB**   | **Nonaktif**    | ~ GiB

### Menonaktifkan ZRAM

Apabila RAM sudah diatas 16 Gib sebaiknya zram dinonaktifkan secara manual, karena ukuran memori yang sudah cukup mumpuni.

```shell
sudo rm /var/service/zramen
```

### Mengaktifkan ZRAM

Sinkron repositori database

```shell
sync
```
Memasang zram dengan zramen

```shell
get zramen
```
Menjalankan zram sebagai layanan sistem init

```shell
sudo ln -s /etc/sv/zramen /var/service/
```
