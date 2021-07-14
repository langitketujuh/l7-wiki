# Fish Shell

## Perintah dasar dengan Fish shell

Perintah dasar di Langitketujuh menggunakan fitur abbr (singkatan) untuk mempercepat mengetik perintah yang sebenarnya. Misalnya mengetik `sync` akan berubah secara otomatis menjadi `sudo xbps-install -S`. Demikian pula perintah lainnya yang seperti dibawah ini.

Perintah            | Contoh          |Fungsi
 :---               | :---            | :---
`sync`              | -               | Memperbarui basis data repositori.
`update`            | -               | Memperbarui aplikasi dan depedensi.
`search <paket>`    | `search gimp`   | Mencari aplikasi berdasarkan basis data.
`get <paket>`       | `get gimp`      | Memasang aplikasi.
`remove <paket>`    | `remove gimp`   | Menghapus aplikasi.
`info <paket>`      | `info gimp`     | Mencari tahu informasi dari aplikasi yang terpasang.
`filelist`          | `filelist gimp` | daftar isi dari aplikasi/depedensi
`autoclean`         | -               | Menghapus cache depedensi versi lama.
`repolist`          | -               | Melihat daftar repository.
`ll`                | -               | Melihat daftar direktori dan berkas.
`ff`                | -               | Membuat ulang cache fonta.
`disk`              | -               | Melihat struktur sistem partisi.

Gunakan arah panah atas/bawah untuk mencari histori perintah terminal. Dan arah kanan untuk melanjutkan perintah yang sudah pernah diketik sebelumnya.

## Merubah fish-shell ke bash

Jike Anda belum terbiasa dengan fish shell, maka jalankan bash shell.

```bash
bash
```

Merubah bash shell secara permanen:

```bash
sudo chsh -s /usr/bin/bash $USER
```

## Dokumentasi dan Tutorial

- [Dokumentasi](https://fishshell.com/docs/current/index.html)
- [Tutorial](https://fishshell.com/docs/current/tutorial.html)
