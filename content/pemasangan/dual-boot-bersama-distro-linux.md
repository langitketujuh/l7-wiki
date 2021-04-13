---
title: Dual Boot Bersama Distro Linux
weight: 6
draft: false
---

{{< hint warning >}}
**Metode**\
Pemasangan dual boot dengan linux lain adalah menjadikan LangitKetujuh akan menjadi sistem operasi kedua. Dengan syarat memiliki partisi `/boot` atau `/boot/efi` dan partisi `/home` yang ingin dipertahankan tanpa format. Partisi `/home` akan dijadikan satu dengan distro linux yang lama sehingga perlu membuat satu partisi baru untuk `/` LangitKetujuh.

Meskipun partisi `/home` jadi satu, `username` baru untuk LangitKetujuh dibedakan dengan `username` distro linux yang lama agar tidak tumpang tindih, kecuali jika menginginkannya.

Jika tidak mempunyai partisi `/home` maka Anda bisa membuat dua partisi baru, yaitu `/` dan `/home` untuk LangitKetujuh.
{{< /hint >}}

{{< toc >}}

## Menyiapkan partisi baru

Gunakan KDE Partition, GParted, GNOME Disk, `cfdisk` atau alat pemartisi lainnya. Lalu resize ruang partisi yang ada untuk digunakan partisi sistem LangitKetujuh.

**Ruang diska**   | **Minimal**         | **Disarankan**
:---              | :---                | :---
**Lite**          | 10 GiB              | 25 Gib
**Pro**           | 20 GiB              | 50 Gib

Berikut ini adalah contoh skema partisi didalam disk yang sudah memiliki partisi **/boot**, **/**, dan **/home**. Sehingga perlu partisi **/** baru.

```
lsblk -o NAME,TYPE,FSTYPE,SIZE,LABEL,MOUNTPOINT
```

{{< tabs "skema" >}}

{{< tab "BIOS (mbr)" >}}
```
NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT
sda    disk           498G                  
├─sda1 part vfat        1G       /boot      
├─sda2 part xfs        50G root  /          
└─sda3 part ext4      438G home  /home      
```
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
```
NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT 
sda    disk           498G                  
├─sda1 part vfat        1G       /boot/efi  
├─sda2 part xfs        50G root  /          
└─sda3 part ext4      438G home  /home      
```
{{< /tab >}}

{{< /tabs >}}

Sesudah dipartisi:

{{< tabs "skema-baru" >}}

{{< tab "BIOS (mbr)" >}}
```
NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT 
sda    disk           498G                  
├─sda1 part vfat        1G       /boot      
├─sda2 part xfs        50G root  /          
├─sda3 part ext4      388G home  /home      
└─sda4 part ext4       50G
```
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
```
NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT 
sda    disk           498G
├─sda1 part vfat        1G       /boot/efi  
├─sda2 part xfs        50G root  /      
├─sda3 part ext4      388G home  /home
└─sda4 part ext4       50G
```
{{< /tab >}}

{{< /tabs >}}

Maka akan ada partisi baru yaitu `sda4` dengan ukuran 50G sebagai contoh. Yang nantinya akan dijadikan partisi `/` untuk LangitKetujuh.

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
**Nama Disk** | **Bootable**  | **Jumlah**  | **Tipe** | **Kondisi partisi**
:---:         | :---:         | :---:       | :---:    | :---:
`/dev/sda3`   |               | `~`         | `linux`  | Lama
`/dev/sda4`   |               | `50G`       | `linux`  | Baru
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk** | ~~Bootable~~  | **Jumlah**  | **Tipe** | **Kondisi partisi**
:---:         | :---:         | :---:       | :---:    | :---:
`/dev/sda1`   |               | `1G`        | `linux`  | Lama
`/dev/sda3`   |               | `~`         | `linux`  | Lama
`/dev/sda4`   |               | `50G`       | `linux`  | Baru
{{< /tab >}}

{{< /tabs >}}

* Baru = Partisinya diformat
* Lama = Partisinya tidak diformat

Partisi `/dev/sda3` untuk `/home` tidak perlu dibuat, karena sudah ada dari pemartisian linux sebelumnya. Jika sudah yakin, pilih `write` lalu masukkan `yes`. Kemudian pilih `quit` untuk keluar.

## Filesystems

Pilih Nama disk kemudian pilih `Change`, lalu sesuaikan dengan kebutuhan _mount point_-nya

{{< hint danger >}}
**Partisi /boot dan /home**\
Partisi tersebut tidak diformat atau dihapus. Jadi pada bagian "Choose New Filesystems" pilih "**No**".
{{< /hint >}}

Berdasarkan skema partisi diatas maka eksekusi _mounting_ akan seperti berikut ini.

- `sda1` Akan dijadikan partisi boot. Tidak diformat.
- `sda2` **Dilewati** karena partisi sistem root distro linux yang lama.
- `sda3` Akan dijadikan satu partisi home dengan distro linux yang lama. Tidak diformat.
- `sda4` Sebuah partisi baru. Akan dijadikan partisi sistem LangitKetujuh.

{{< tabs "filesystems" >}}

{{< tab "BIOS (dos)" >}}
**Nama Disk**   | **Tipe Partisi**  | **Mount Point**   | **New Filesystems (Format)**
:---:           | :---:             | :---:             | :---:
`/dev/sda1`     | `Vfat`            | `/boot`           | **`no`**
`/dev/sda3`     | `Ext4`            | `/home`           | **`no`**
`/dev/sda4`     | `Xfs`             | `/`               | **`yes`**
{{< /tab >}}

{{< tab "UEFI (gpt)" >}}
**Nama Disk**   | **Tipe Partisi**  | **Mount Point**   | **New Filesystems (Format)**
:---:           | :---:             | :---:             | :---:
`/dev/sda1`     | `Vfat`            | `/boot/efi`       | **`no`**
`/dev/sda3`     | `Ext4`            | `/home`           | **`no`**
`/dev/sda4`     | `Xfs`             | `/`               | **`yes`**
{{< /tab >}}

{{< /tabs >}}

Jika sudah selesai pilih `Done`.

## Settings

Pilih `Settings` untuk melihat ringkasan pengaturan pemasangan yang akan dijalankan. Pada bagian partisi, nilai `1` artinya partisi akan diformat dan `0` partisi dibiarkan tetap.

## Install

Jika sudah yakin, Pilih `Install` dan `OK` untuk melanjutkan operasi pemasangan. Pilih `Yes` untuk memformat partisi sesuai pangaturan yang sudah direview `Settings` sebelumnya.

Tunggu proses hingga selesai hingga ada perintah untuk melakukan reboot. Pilih `Yes` untuk reboot. Setelah mesin mati, cabut flasdisk agar tidak kembali ke mode Live USB.