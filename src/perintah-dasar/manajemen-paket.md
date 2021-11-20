# Manajemen Paket

## Perintah dasar

Perintah dasar di Langitketujuh memanfaatkan fitur singkatan (abbreviations) pada fish shell untuk mempercepat mengetik perintah yang sebenarnya. Misalnya, ketika mengetik `sync` akan berubah secara otomatis menjadi `sudo xbps-install -S`. Demikian pula perintah lainnya yang seperti dibawah ini.

Perintah            | Contoh          |Fungsi
 :---               | :---            | :---
`sync`              |                 | Memperbarui basis data repositori.
`update`            |                 | Memperbarui aplikasi dan depedensi.
`get paket`         | `get gimp`      | Memasang aplikasi.
`search paket`      | `search gimp`   | Mencari aplikasi berdasarkan basis data.
`remove paket`      | `remove gimp`   | Menghapus aplikasi.
`info paket`        | `info gimp`     | Informasi dari aplikasi yang terpasang.
`filelist paket`    | `filelist gimp` | Daftar isi dari aplikasi/depedensi
`autoclean`         |                 | Menghapus cache depedensi versi lama.
`repolist`          |                 | Melihat daftar repository.
`ll`                |                 | Melihat daftar direktori dan berkas.
`ff`                |                 | Membuat ulang cache fonta.
`disk`              |                 | Melihat struktur sistem partisi.

Gunakan arah panah atas/bawah untuk mencari histori perintah terminal. Dan arah kanan untuk melanjutkan perintah yang sudah pernah diketik sebelumnya.

## Meta paket

Beberapa paket sudah kami kategorikan dengan meta paket seperti kompiler, codec audio dan video, wine emulator dan lain-lain. Paket ini diawali dengan `l7-pkg-`.

Paket             |Fungsi
 :---             | :---
l7-pkg-codec      | Codec audio dan video
l7-pkg-compress   | Alat kompresi seperti zip dan tar
l7-pkg-compiler   | Pengkompil aplikasi
l7-pkg-kde        | KDE Plasma Lingkungan desktop
l7-pkg-kde-apps   | Aplikasi KDE Plasma Lingkungan desktop
l7-pkg-lamp       | LAMP Web server
l7-pkg-rust       | Pemrograman Rust dan kompiler
l7-pkg-xorg       | X.org Window System
l7-pkg-wine       | Wine penggerak aplikasi Windows. [Lebih lanjut.](../aplikasi/winehq.md)

Contoh penggunaan:
- Memasang wine :`sudo xbps-install l7-pkg-wine`
- Memasang beberapa paket: `sudo xbps-install l7-pkg-{codec,kde,kde-apps}`
