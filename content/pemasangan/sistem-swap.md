---
title: Sistem swap
weight: 2
draft: true
---

{{< hint danger >}}
**Cadangkan data Hardisk Anda**\
Ketika merubah, mengganti, menambah dan mengurangi partisi. Sebaiknya Anda sudah mencadangkan ke disk eksternal atau cloud agar aman jika terjadi kesalahan teknis. Mohon tidak melanjutkan jika Anda tidak yakin dengan apa yang dilakukan.
{{< /hint >}}

## Mengerti dengan sistem partisi sendiri

Gunakan `disk` atau `lsblk` untuk mengetahui sistem partisi. Setidaknya dengan ini dapat mengerti partisi mana yang akan dijadikan partisi sistem, partisi boot, partisi home dan partisi opsional.

## Mengetahui tipe disk MBR atau GPT

UEFI diharuskan menggunakan tipe disk GPT, sedangkan BIOS diharuskan menggunakan tipe disk MBR. Jika disk yang akan digunakan adalah `sda` maka ketik:

```shell
sudo fdisk -l /dev/sda
```

Lihat keluaran bagian `Disklabel type:` jika hasilnya `dos` maka tipe MBR jika `gpt` maka tipe GPT.

## Merubah MBR ke GPT tanpa format

Terkadang disk setelah diperiksa ternyata adalah MBR(dos). Padahal saat ini boot mode yang digunakan adalah UEFI, berarti Anda sedang migrasi dari BIOS ke UEFI. Maka disk perlu dikonversi dari MBR ke GPT.

Gunakan `gdisk` untuk konversinya. Pada contoh dibawah ini misalnya disk yang digunakan adalah `sda`. Dan jangan lupa untuk umount disk yang akan dikonversikan.

```shell
sudo gdisk /dev/sda
```

Pilih `w` untuk menjadikan disk ke GPT. Pilih `y` untuk konfirmasi proses.

## Merubah GPT ke MBR tanpa format

Kami rasa sangat disayangkan bila disk dikonversi ke MBR, karena seperti mengalami penurunan fitur. Jika terpaksa konversi tetap gunakan `gdisk`. Pada contoh dibawah ini misalnya disk yang akan dipasang LangitKetujuh adalah `sda`. Jangan lupa untuk unmount disk yang akan dikonversikan.

```shell
sudo gdisk /dev/sda
```

Pilih `r` untuk recovery dan pilihan tranformasi. Pilih `g` untuk konversi GPT ke MBR.

## Pembagian partisi diawal

Pembagian partisi melalui mode pemasangan langsung juga bisa dilakukan. Tetapi agar lebih siap lagi, sebaiknya pembagian partisi dilakukan diawal sehingga lebih mudah dan cepat untuk mounting.

Pemartisian sebaiknya menggunakan `cfdisk`. Pemisalan disk yang akan dipasang adalah `sda` maka:

```shell
sudo cfdisk /dev/sda
```

Gunakan navigasi arah panah untuk melakukan eksekusi. Misalnya melakukan perintah `new` dan `delete`. Kemudian atur partisi yang akan digunakan sesuai kebutuhan. Agar optimal penggunaan partisinya untuk instalasi satu sistem operasi sebaiknya menggunakan 3 jenis partisi, yaitu antara lain:

{{< tabs "partisi" >}}

{{< tab "BIOS (dos)" >}}
**Tipe Partisi** | **Jumlah** | **Mount Point**
:---: | :---: | :---:
`Vfat` | `1G` | `/boot`
`XFS` | `50G` | `/`
`Ext4` | `~` | `/home`
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Tipe Partisi** | **Jumlah** | **Mount Point**
:---: | :---: | :---:
`Vfat` | `1G` | `/boot/efi`
`XFS` | `50G` | `/`
`Ext4` | `~` | `/home`
{{< /tab >}}

{{< /tabs >}}

Jumlah gigabyte dari `/dev/sda3` bisa ditulis dari sisa kapasitas hardisk yang ada atau disesuaikan dengan kebutuhan saja. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.
