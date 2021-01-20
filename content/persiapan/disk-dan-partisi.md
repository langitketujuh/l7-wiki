---
title: Disk dan Partisi
weight: 6
---

## Mengerti dengan sistem partisi mesin sendiri

Gunakan `disk` untuk mengetahui sistem partisi. Setidaknya dengan ini dapat mengerti partisi mana yang akan dijadikan partisi sistem, partisi boot, partisi home dan partisi opsional.

## Mengetahui tipe disk MBR atau GPT

Jika disk yang akan digunakan adalah `sda` maka ketik:

`sudo fdisk -l /dev/sda`

Lihat keluaran bagian `Disklabel type:` jika hasilnya `dos` maka tipe MBR jika `gpt` maka tipe GPT.

## Merubah MBR ke GPT tanpa format

Biasanya migrasi dari Legacy ke UEFI perlu konversi disk. Gunakan `gdisk` untuk konversinya. Pada contoh dibawah ini misalnya disk yang digunakan adalah `sda`. Jangan lupa untuk unmount disk yang akan dikonversikan.

`sudo gdisk /dev/sda`

Pilih `w` untuk menjadikan ke GPT partisi ke disk. Pilih `y` untuk konfirmasi proses.

## Merubah GPT ke MBR

Kami rasa sangat disayangkan bila disk dikonversi ke MBR, karena seperti mengalami penurunan fitur. Jika terpaksa konversi tetap gunakan `gdisk`. Pada contoh dibawah ini misalnya disk yang digunakan adalah `sda`. Jangan lupa untuk unmount disk yang akan dikonversikan.

`sudo gdisk /dev/sda`

Pilih `r` untuk recovery dan pilihan tranformasi. Pilih `g` untuk konversi GPT ke MBR.

## Pembagian partisi diawal lebih baik

Pembagian partisi melalui mode pemasangan juga bisa dilakukan. Tetapi agar lebih siap lagi sebaiknya pembagian partisi dilakukan diawal, sehingga ketika pemsangan OS agar tinggal di mounting saja.

Misalnya disk yang digunakan adalah `sda` maka

`sudo cfdisk /dev/sda`

Gunakan navigasi arah panah untuk melakukan eksekusi perintah. Misalnya `new` dan `delete`.

Partisi yang digunakan untuk instalasi direkomendasikan 3 bagian partisi, antara lain:

* `/boot` atau `/boot/efi`dengan sistem berkas Fat32 dengan ukuran `1G`
* `/` dengan sistem berkas XFS dengan ukuran sekitar `50G` atau lebih
* `/home`dengan sistem berkas Ext4 dengan ukuran sisa `G` dari ruang kosong

Jika sudah pilih `write` masukkan `yes` lalu pilih `quit` untuk keluar.
