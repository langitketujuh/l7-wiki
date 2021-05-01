---
title: Clight Auto Brightness
weight: 2
draft: false
---

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam. Secara bawaan sudah aktif.

Biasanya baterai yang ngedrop dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah fitur ini bisa dinonaktifkan saja.

## Memasang clight dan clight daemon

```shell
get Clight Clightd
```

## Melihat status clightd

```shell
sudo sv status Clightd
```

## Mengaktifkan clightd

Secara bawaan Clightd sudah aktif

```shell
sudo ln -s /etc/sv/Clightd /var/service/
```

## Menonaktifkan clightd

```shell
sudo rm /var/service/Clightd
```

## Menjalankan ulang clightd

```shell
sudo sv restart Clightd
```

## Menghapus clight dan clight daemon

```shell
remove Clight Clightd
```
