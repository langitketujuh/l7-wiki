---
title: Perintah Dasar Fish Shell
weight: 1
draft: false
---

### Perintah dasar dengan Fish shell

Perintah dasar di Langitketujuh menggunakan fitur abbr (singkatan) untuk mempercepat mengetik perintah yang sebenarnya. Misalnya mengetik `sync` akan berubah secara otomatis menjadi `sudo xbps-install -S`. Demikian pula perintah lainnya yang seperti dibawah ini.

Perintah            | Contoh          |Fungsi
 :---               | :---            | :---
`sync`              | -               | Memperbarui basis data repositori.
`update`            | -               | Memperbarui aplikasi dan depedensi.
`search <paket>`    | `search gimp`   | Mencari aplikasi berdasarkan basis data.
`get <paket>`       | `get gimp`      | Memasang aplikasi.
`remove <paket>`    | `remove gimp`   | Menghapus aplikasi.
`info <paket>`      | `info gimp`     | Mencari tahu informasi dari aplikasi yang terpasang.
`autoclean`         | -               | Menghapus cache depedensi versi lama.
`ll`                | -               | Melihat daftar direktori dan berkas
`disk`              | -               | Melihat sistem partisi


Gunakan arah panah atas/bawah untuk mencari histori perintah terminal. Dan arah kanan untuk melanjutkan perintah yang sudah pernah diketik sebelumnya.

## Merubah fish-shell ke bash

Jike anda belum terbiasa dengan fish shell, maka jalankan bash shell.

```shell
bash
```

Merubah bash shell secara permanen:

```shell
sudo chsh -s /usr/bin/bash $USER
```

## Dokumentasi dan Tutorial

### Dokumentasi

https://fishshell.com/docs/current/index.html

### Tutorial

https://fishshell.com/docs/current/tutorial.html
