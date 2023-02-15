# NVIDIA

## Nouveau

`nouveau` (Open Source Nvidia Driver) di maintenance oleh komunitas dengan dokumentasi yang disediakan oleh Nvidia. Secara bawaan sistem LangitKetujuh sudah memasang driver nouveau.

Cek `driver` kartu grafisnya dengan inxi.

```
inxi -G
```
Misalnya `driver:nouveau` maka saat ini kartu grafis yang digunakan adalah nouveau.

## Nvidia

Nvidia (Driver proprietary) hanya bisa dipasang oleh sistem [Glibc](../../../perbandingan/libc.html#glibc-gnu-libc). Sebab driver proprietary tidak bisa diporting ke arsitektur pustaka c lain (seperti musl), kecuali vendornya sendiri yang merilisnya. Secara bawaan LangitKetujuh sudah mengaktifkan repositori tidak bebas namun tidak menambahkan perangkat lunak tidak bebas sama sekali.

Cara memasang Nvidia, periksa dahulu tipe Nvidia.

```
inxi -G
```

Pasang repositori [nonfree]. Sebab nvidia merupakan perangkat lunak proprietary (tidak terbuka).

```
get void-repo-nonfree
```

Lalu perbarui repodata.

```
update
```

Pasang dengan menyesuaikan nomer versi driver kartu grafis.

| **Perintah**    | **Versi driver**   |
| :-------------- | :----------------: |
| `get nvidia`    | 510+               |
| `get nvidia470` | 470+               |
| `get nvidia390` | 390+               |

Jika driver Nvidia yang digunakan termasuk driver [legacy gpu](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/) maka gunakan `nvidia390` atau `nvidia470`.

![Nvidia Search LangitKetujuh OS](../../../media/image/nvidia-driver-langitketujuh-id-1.webp)

Lebih jelasnya pengguna dapat menggunakan [pencarian driver](https://www.nvidia.com/Download/index.aspx?lang=en-us) dengan memilih `Operating System: Linux 64-bit`, tentunya untuk mencari nomer versi saja bukan untuk diunduh. Sedangkan pemasangan driver tetap menggunakan perintah dari tabel diatas.

![Nvidia Search LangitKetujuh OS](../../../media/image/nvidia-driver-langitketujuh-id-2.webp)

Dari contoh diatas, Nvidia yang digunakan adalah versi `510.47.03` sehingga cara memasangnya dengan `get nvidia` (diatas versi `510`). Hati-hati memilih dan memasang versi driver. Jika salah versi kemungkinannya akan blackscreen, tetapi masalah tersebut dapat diatasi dengan [chroot mode](../../chroot/index.md) dan menghapus drivernya nvidia.

## Blacklist nouveau

Tambahkan baris dibawah ini.

```
blacklist nouveau
```
Masukkan ke dalam berkas:

```
/etc/modprobe.d/nouveau_blacklist.conf
/usr/lib/modprobe.d/nvidia.conf
/usr/lib/modprobe.d/nvidia-dkms.conf
```

[nonfree]:../../server/index.html#repo-tambahan
