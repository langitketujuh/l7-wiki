---
title: Clight Auto Brightness
weight: 2
draft: false
---

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam. Secara bawaan sudah aktif.

Biasanya baterai yan ngedrop dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah dinonaktifkan saja.

## Melihat status clightd

```shell
sudo sv status clightd
```

## Mengaktifkan clightd

Secara bawaan clightd sudah aktif

```shell
sudo ln -s /etc/sv/clightd /var/service/
```

## Menonaktifkan clightd

```shell
sudo rm /var/service/clightd
```

## Menjalankan ulang clightd

```shell
sudo sv restart clightd
```
