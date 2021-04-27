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

## Menghapus clight dan clight daemon

```shell
remove Clight Clightd
```
