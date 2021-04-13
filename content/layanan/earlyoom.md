---
title: EarlyOOM Penyelamat
weight: 3
draft: false
---

EarlyOOM berfungsi untuk menghentikan proses yang memungkinkan membuat hang komputer. Jika sisa memori tinggal 10% maka aplikasi yang sengaja membuat memori penuh akan tereliminasi secara otomatis.

* Manfaatnya lain untuk menghindari mematikan mesin secara paksa.
* Menghindari bad sector SSD/HDD

## Melihat status earlyoom

```shell
sudo sv status earlyoom
```

## Mengaktifkan earlyoom

Secara bawaan earlyoom sudah aktif

```shell
sudo ln -s /etc/sv/earlyoom /var/service/
```

## Menonaktifkan earlyoom

```shell
sudo rm /var/service/earlyoom
```

## Menjalankan ulang earlyoom

```shell
sudo sv restart earlyoom
```