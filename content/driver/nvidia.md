---
title: Nvidia
weight: 2
draft: false
---

## nouveau (Driver Open Source)

Driver ini di maintenance oleh komunitas dengan dokumentasi yang disediakan oleh Nvidia. Secara bawaan sistem LangitKetujuh sudah memasang driver nouveau.

Cek `driver` kartu grafis Anda dengan inxi

```shell
inxi -G
```
Misalnya `driver:nouveau` maka saat ini kartu grafis yang digunakan adalah nouveau.

## Nvidia (Driver Propietary)

Driver propietary ini hanya bisa dipasang oleh sistem glibc. Sebab driver propietary tidak bisa diporting ke arsitektur libc lain (seperti musl), kecuali vendornya sendiri yang merilisnya. Secara bawaan LangitKetujuh sudah mengaktifkan repositori nonfree namun tidak menambahkan aplikasi nonfree (tidak bebas).

Cara memasang Nvidia, periksa dahulu tipe Nvidia.

```shell
inxi -G
```

Pasang dengan menyesuaikan tipe kartu grafis Nvidia

**Perintah** | **Nvidia Versi**
:--- | :---
`get nvidia` | Nvidia Seri 600 keatas
`get nvidia390` | Nvidia Seri 400/500

Hati-hati memilih versi Nvidia, jika salah versi kemungkinan akan blackscreen.

## Blacklist nouveau

Tambahkan beris berikut ini

```shell
#blacklist nouveau
```
Kedalam salah satu berkas ini

```shell
/etc/modprobe.d/nouveau_blacklist.conf
/usr/lib/modprobe.d/nvidia.conf
/usr/lib/modprobe.d/nvidia-dkms.conf
```
