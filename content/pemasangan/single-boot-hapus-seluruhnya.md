---
title: Single Boot Hapus Seluruhnya
weight: 4
draft: false
---

{{< hint warning >}}
**Metode**\
Pemasangan single boot dengan hapus seluruhnya artinya pemasangan dengan satu sistem operasi saja. Pemasangan dengan metode ini ditujukan untuk disk yang benar-benar kosong, aman dipartisi ulang, tidak ada data penting dan aman untuk dihapus semua partisinya.
{{< /hint >}}

{{< toc >}}

## Pemasangan

Aplikasi pemasang di LangitKetujuh OS tidak menggunakan GUI, tetapi menggunakan Ncurses CLI. Jadi navigasinya menggunakan arah panah (⬆️ ➡️ ⬇️ ⬅️), `tab` dan `enter` di keyboard.
Buka aplikasi `konsole` di menu, kemudian ketik perintah berikut untuk menuju pemasang LangitKetujuh OS.

```shell
sudo langitketujuh-install
```

## Keyboard

Pilih `us` untuk jenis papan ketik `QWERTY`

## Network

Lewati tahap ini karena pemasangan sebaiknya dilakukan secara offline. Jika terlanjur terklik, pilih `Back` untuk kembali.`

## Source

Pilih `Local` untuk instalasi offline agar lebih cepat.

## Hostname

Hostname ditulis dengan huruf kecil. Bisa menggunakan nama brand komputer, nama website, atau nama keluarga. Contohnya `langitketujuh`, `linux`, `studio`, dsb.

## Locale

Pilih `en_uS.UTF-8` untuk menggunakan Bahasa Inggris. Atau `id_ID.UTF-8` untuk menggunakan Bahasa Indonesia.

## Timezone

Untuk wilayah Indonesia pilih:

{{< tabs "timezone" >}}

{{< tab "WIB" >}}
**Benua** | **Kota**
:--- | :---
Asia | Jakarta
{{< /tab >}}

{{< tab "WITA" >}}
**Benua** | **Kota**
:--- | :---
Asia | Makassar
{{< /tab >}}

{{< tab "WIT" >}}
**Benua** | **Kota**
:--- | :---
Asia | Jayapura
{{< /tab >}}

{{< /tabs >}}

## Root Password

Masukkan kata sandi yang unik dan mudah diingat. Kemudian ketik lagi.

## User Account

Nama pengguna (username) ditulis dengan huruf kecil. Bisa menggunakan nama panggilan. Contohnya `hervy`, `umar`, dsb.
Masukkan kata sandi yang unik dan mudah diingat. Kemudian ketik lagi dengan benar.

Kemudian tulis nama pengguna untuk login (userlogin). Bisa menggunakan huruf kapital dan spasi. Misalnya `Hervy Qurrotul`, `Muhammad Rizal`, dsb.

Untuk "group membership" lewati saja dengan memilih `OK`.

## BootLoader

Bootloader tergantung dari letak disk yang terdapat partisi **/**. Biasanya menggunakan dari disk utama `/dev/sda`.

Pada dialog `use graphical boot loader` pilih `Yes`.

## Partition

{{< hint danger >}}
**Cadangkan data Hardisk Anda**\
Ketika merubah, mengganti, menambah dan mengurangi partisi. Sebaiknya Anda sudah mencadangkan ke disk eksternal atau cloud agar aman jika terjadi kesalahan teknis. Mohon tidak melanjutkan jika Anda tidak yakin dengan apa yang dilakukan.
{{< /hint >}}

Abaikan jika sudah melakukan pemartisian diawal, lalu lanjut ke tahap **Filesystems**. Jika belum diatur partisinya, pilih `/dev/sda` (disk saat ini). Modifikasi pilih `OK`. Pilih `cfdisk` lalu sesuaikan dengan kebutuhan partisi yang Anda inginkan. Misalnya seperti partisi dibawah ini.

{{< tabs "partitions" >}}

{{< tab "BIOS (dos)" >}}
**Nama Disk**   | **Bootable**  | **Jumlah**  | **Tipe**  | **Kondisi partisi**
:---:           | :---:         | :---:       | :---:     | :---:
`/dev/sda1`     | *             | `1G`        | `linux`   | Baru
`/dev/sda2`     |               | `50G`       | `linux`   | Baru
`/dev/sda3`     |               | `~`         | `linux`   | Baru
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk**   | ~~**Bootable**~~  | **Jumlah**  | **Tipe**  | **Kondisi partisi**
:---:           | :---:             | :---:       | :---:     | :---:
`/dev/sda1`     |                   | `1G`        | `linux`   | Baru
`/dev/sda2`     |                   | `50G`       | `linux`   | Baru
`/dev/sda3`     |                   | `~`         | `linux`   | Baru
{{< /tab >}}

{{< /tabs >}}

* Baru = Partisinya diformat
* Lama = Partisinya tidak diformat

Jumlah gigabyte dari `/dev/sda3` bisa ditulis dari sisa kapasitas hardisk yang ada atau disesuaikan dengan kebutuhan saja. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.

## Filesystems

Pilih Nama disk kemudian pilih `Change`, lalu sesuaikan dengan kebutuhan _mount point_-nya
{{< tabs "filesystems" >}}

{{< tab "BIOS (dos)" >}}
**Nama Disk** | **Tipe Partisi** | **Mount Point** | **New Filesystems (Format)**
:---: | :---: | :---: | :---:
`/dev/sda1` | `Vfat` | `/boot` | `yes`
`/dev/sda2` | `XFS` | `/` | `yes`
`/dev/sda3` | `Ext4` | `/home` | `yes`
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk** | **Tipe Partisi** | **Mount Point** | **New Filesystems (Format)**
:---: | :---: | :---: | :---:
`/dev/sda1` | `Vfat` | `/boot/efi` | `yes`
`/dev/sda2` | `XFS` | `/` | `yes`
`/dev/sda3` | `Ext4` | `/home` | `yes`
{{< /tab >}}

{{< /tabs >}}

Jika sudah selesai pilih `Done`.

## Settings

Pilih `Settings` untuk melihat ringkasan pengaturan pemasangan yang akan dijalankan. Pada bagian partisi, nilai `1` artinya partisi akan diformat dan `0` partisi dibiarkan tetap.

## Install

Jika sudah yakin, Pilih `Install` dan `OK` untuk melanjutkan operasi pemasangan. Pilih `Yes` untuk memformat partisi sesuai pangaturan yang sudah direview `Settings` sebelumnya.

Tunggu proses hingga selesai hingga ada perintah untuk melakukan reboot. Pilih `Yes` untuk reboot. Setelah mesin mati, cabut flasdisk agar tidak kembali ke mode Live USB.
