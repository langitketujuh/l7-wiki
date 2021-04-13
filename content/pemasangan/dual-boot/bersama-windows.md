---
title: Bersama Windows
weight: 2
draft: false
---

{{< hint warning >}}
**Metode**\
Pemasangan dual boot LangitKetujuh bersama Windows adalah sistem operasi windows sudah terpasang dan LangitKetujuh menjadi sistem operasi kedua.
{{< /hint >}}

{{< toc >}}

## Menyiapkan partisi baru

Gunakan KDE Partition, GParted, GNOME Disk, `cfdisk` atau alat pemartisi lainnya. Lalu resize ruang partisi yang ada untuk digunakan partisi sistem LangitKetujuh.

**Ruang diska**   | **Minimal**         | **Disarankan**
:---              | :---                | :---
**Lite**          | 10 GiB              | 25 Gib
**Pro**           | 20 GiB              | 50 Gib

Berikut ini adalah contoh skema partisi didalam disk yang sudah memiliki partisi Windows.

```
➜  ~ lsblk -o NAME,TYPE,FSTYPE,SIZE,LABEL

NAME   TYPE FSTYPE    SIZE LABEL
sda    disk           498G                 
├─sdb1 part ntfs       50M System Reserved 
├─sdb2 part ntfs      498M 
└─sdb3 part ntfs      497G windows
```

Sesudah dipartisi:

```
NAME   TYPE FSTYPE    SIZE LABEL
sda    disk           498G
├─sdb1 part ntfs       50M System Reserved
├─sdb2 part ntfs      498M 
├─sdb3 part ntfs      297G windows
├─sda4 part ext4       50G
└─sda5 part ext4      150G
```

Maka akan ada partisi baru yaitu:

* `sda4` dengan ukuran `50G`, yang akan dijadikan `/`
* `sda5` dengan ukuran `150G`, yang akan dijadikan `/home`

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
{{< hint warning >}}
**Nama Pengguna (username)**\
Gunakan nama pengguna yang berbeda dengan pengguna distro linux yang lama agar tidak tumpang tindih, hal ini untuk membuat pengaturan baru untuk distro LangitKetujuh. Jika ingin menimpa, tidak mengapa untuk menggunakan username yang sama.
{{< /hint >}}

Nama pengguna (username) ditulis dengan huruf kecil. Bisa menggunakan nama panggilan. Contohnya `hervy`, `umar`, dsb.
Masukkan kata sandi yang unik dan mudah diingat. Kemudian ketik lagi dengan benar.

Kemudian tulis nama pengguna untuk login (user login). Bisa menggunakan huruf kapital dan spasi. Misalnya `Hervy Qurrotul`, `Muhammad Rizal`, dsb.

Untuk "group membership" lewati saja dengan memilih `OK`.

## BootLoader

Bootloader tergantung dari letak disk yang terdapat partisi **/**. Biasanya menggunakan dari disk utama `/dev/sda`.

Pada dialog `use graphical boot loader` pilih `Yes`.

## Partition

{{< hint danger >}}
**Cadangkan data Hardisk Anda**\
Ketika merubah, mengganti, menambah dan mengurangi partisi. Sebaiknya Anda sudah mencadangkan ke disk eksternal atau cloud agar aman jika terjadi kesalahan teknis. Mohon tidak melanjutkan jika Anda tidak yakin dengan apa yang dilakukan.
{{< /hint >}}

Abaikan jika sudah melakukan pemartisian diawal, lalu lanjut ke tahap **Filesystems**. Jika belum diatur partisinya, pilih `/dev/sda` (disk saat ini). Modifikasi pilih `OK`. Pilih `cfdisk` lalu sesuaikan dengan kebutuhan partisi yang Anda inginkan. 

Berdasarkan dari contoh skema diatas, maka partisi yang akan digunakan terlihat seperti ini.

{{< tabs "partitions" >}}

{{< tab "BIOS (dos)" >}}
**Nama Disk** | **Jumlah**  | **Tipe** | **Kondisi partisi**
:---:         | :---:       | :---:    | :---:
`/dev/sda4`   | `50`        | `linux`  | Baru
`/dev/sda5`   | `150G`      | `linux`  | Baru
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk** | **Jumlah**  | **Tipe** | **Kondisi partisi**
:---:         | :---:       | :---:    | :---:
`/dev/sda2`   | `498M`      | `linux`  | Lama
`/dev/sda4`   | `50`        | `linux`  | Baru
`/dev/sda5`   | `150G`      | `linux`  | Baru
{{< /tab >}}

{{< /tabs >}}

* Baru = Partisinya diformat
* Lama = Partisinya tidak diformat

Partisi `/dev/sda3` tidak perlu dibuat, karena sudah ada dari pemartisian linux sebelumnya. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.

## Filesystems

Pilih Nama disk kemudian pilih `Change`, lalu sesuaikan dengan kebutuhan _mount point_-nya. Berdasarkan skema partisi diatas maka eksekusi _mounting_ akan seperti berikut ini.

- `sda1` **Dilewati** karena partisi system reserved windows. Tidak diformat.
- `sda2` Khusus UEFI, akan dijadikan partisi `/boot/efi`. Tidak diformat.
- `sda3` **Dilewati** karena partisi sistem windows (localdisk:C ). Tidak diformat.
- `sda4` Partisi baru untuk sistem (`/`). Diformat.
- `sda5` Partisi baru untuk penyimpanan data (`/home`). Diformat.

{{< tabs "filesystems" >}}

{{< tab "BIOS (dos)" >}}
**Nama Disk**   | **Tipe Partisi**  | **Mount Point**   | **New Filesystems (Format)**
:---:           | :---:             | :---:             | :---:
`/dev/sda4`     | `Xfs`             | `/`               | **`yes`**
`/dev/sda5`     | `Ext4`            | `/home`           | **`yes`**
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk**   | **Tipe Partisi**  | **Mount Point**   | **New Filesystems (Format)**
:---:           | :---:             | :---:             | :---:
`/dev/sda2`     | `Vfat`            | `/boot/efi`       | **`no`**
`/dev/sda4`     | `Xfs`             | `/`               | **`yes`**
`/dev/sda5`     | `Ext4`            | `/home`           | **`yes`**
{{< /tab >}}

{{< /tabs >}}

Jika sudah selesai pilih `Done`.

## Settings

Pilih `Settings` untuk melihat ringkasan pengaturan pemasangan yang akan dijalankan. Pada bagian partisi, nilai `1` artinya partisi akan diformat dan `0` partisi dibiarkan tetap.

## Install

Jika sudah yakin, Pilih `Install` dan `OK` untuk melanjutkan operasi pemasangan. Pilih `Yes` untuk memformat partisi sesuai pangaturan yang sudah direview `Settings` sebelumnya.

Tunggu proses hingga selesai hingga ada perintah untuk melakukan reboot. Pilih `Yes` untuk reboot. Setelah mesin mati, cabut flasdisk agar tidak kembali ke mode Live USB.
