---
title: Zramen Pengatur ZRAM
weight: 5
draft: false
---

Zramen untuk pengatur ZRAM. ZRAM sendiri untuk menambahkan swap di meori fisik secara terkompresi. Dengan ZRAM akan menambah memori 25% dari memori fisik.

Jika memori fisik dirasa sudah cuup besar, maka `zramen` dinonaktifkan saja.

## Memasang zramen daemon

```shell
get zramen
```

## Melihat status zramen

```shell
sudo sv status zramen
```

## Mengaktifkan zramen

Secara bawaan zramen sudah aktif

```shell
sudo ln -s /etc/sv/zramen /var/service/
```

## Menonaktifkan zramen

```shell
sudo rm /var/service/zramen
```

## Menjalankan ulang zramen

```shell
sudo sv restart zramen
```

## Menghapus zramen daemon

```shell
remove zramen
```
