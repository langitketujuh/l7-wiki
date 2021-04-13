---
title: TLP Power Manajemen
weight: 4
draft: false
---

TLP Mengatur power management agar penggunaan baterai laptop lebih efisien.

## Melihat status tlp

```shell
sudo sv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```shell
sudo ln -s /etc/sv/tlp /var/service/
```

## Menonaktifkan tlp

```shell
sudo rm /var/service/tlp
```

## Menjalankan ulang tlp

```shell
sudo sv restart tlp
```