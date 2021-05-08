# Nvidia GPU Driver

## Nouveau

`nouveau` (Open Source Nvidia Driver) di maintenance oleh komunitas dengan dokumentasi yang disediakan oleh Nvidia. Secara bawaan sistem LangitKetujuh sudah memasang driver nouveau.

Cek `driver` kartu grafis Anda dengan inxi

```bash
inxi -G
```
Misalnya `driver:nouveau` maka saat ini kartu grafis yang digunakan adalah nouveau.

## Nvidia

Nvidia (Driver propietary) hanya bisa dipasang oleh sistem [Glibc](../perbandingan/musl-vs-glibc.html#glibc). Sebab driver propietary tidak bisa diporting ke arsitektur libc lain (seperti musl), kecuali vendornya sendiri yang merilisnya. Secara bawaan LangitKetujuh sudah mengaktifkan repositori nonfree namun tidak menambahkan aplikasi nonfree (tidak bebas).

Cara memasang Nvidia, periksa dahulu tipe Nvidia.

```bash
inxi -G
```

Pasang dengan menyesuaikan tipe kartu grafis Nvidia

**Perintah** | **Nvidia Versi**
:--- | :---
`get nvidia390` | Nvidia Seri 400/500
`get nvidia` | Nvidia Seri 600 keatas

Jika Driver Nvidia Anda termasuk driver legacy maka gunakan `nvidia390`. Jenis-jenis driver Nvidia legacy bisa dilihat di tautan [Driver Nvidia Legacy](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/) ini.

Hati-hati memilih versi Nvidia, jika salah versi kemungkinan akan blackscreen.

## Blacklist nouveau

Tambahkan beris berikut ini

```bash
#blacklist nouveau
```
Kedalam salah satu berkas ini

```bash
/etc/modprobe.d/nouveau_blacklist.conf
/usr/lib/modprobe.d/nvidia.conf
/usr/lib/modprobe.d/nvidia-dkms.conf
```