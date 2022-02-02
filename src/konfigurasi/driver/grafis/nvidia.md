# NVIDIA GPU Driver

## Nouveau

`nouveau` (Open Source Nvidia Driver) di maintenance oleh komunitas dengan dokumentasi yang disediakan oleh Nvidia. Secara bawaan sistem LangitKetujuh sudah memasang driver nouveau.

Cek `driver` kartu grafis Anda dengan inxi

```bash
inxi -G
```
Misalnya `driver:nouveau` maka saat ini kartu grafis yang digunakan adalah nouveau.

## Nvidia

Nvidia (Driver proprietary) hanya bisa dipasang oleh sistem [Glibc](../../../perbandingan/libc.html#glibc-gnu-libc). Sebab driver proprietary tidak bisa diporting ke arsitektur pustaka c lain (seperti musl), kecuali vendornya sendiri yang merilisnya. Secara bawaan LangitKetujuh sudah mengaktifkan repositori tidak bebas namun tidak menambahkan perangkat lunak tidak bebas sama sekali.

Cara memasang Nvidia, periksa dahulu tipe Nvidia.

```bash
inxi -G
```

Pasang dengan menyesuaikan nomer seri driver kartu grafis.

| **Perintah**                  | **Seri Driver** |
| :---------------------------- | :-------------- |
| `doas xbps-install nvidia390` | 400/500         |
| `doas xbps-install nvidia`    | 600 keatas      |

Jika driver Nvidia Anda termasuk driver legacy maka gunakan `nvidia390`. Jenis-jenis driver Nvidia legacy bisa dilihat di tautan [Driver Nvidia Legacy](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/) ini.

Hati-hati memilih versi Nvidia, jika salah versi kemungkinan akan blackscreen.

## Blacklist nouveau

Tambahkan baris dibawah ini.

```bash
#blacklist nouveau
```
Masukkan ke dalam berkas:

```bash
/etc/modprobe.d/nouveau_blacklist.conf
/usr/lib/modprobe.d/nvidia.conf
/usr/lib/modprobe.d/nvidia-dkms.conf
```
