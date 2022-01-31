# XBPS Paket Manajer

## Perintah dasar

Perintah dasar di Langitketujuh memanfaatkan fitur singkatan (abbreviations) pada [fish-shell](../shell/fish.md) untuk mempercepat mengetik perintah yang sebenarnya. Misalnya, ketika mengetik `sync` akan berubah secara otomatis menjadi `doas xbps-install -S`. Demikian pula perintah lainnya yang seperti dibawah ini.

| Perintah         | Contoh          | Fungsi                                          |
| :--------------- | :-------------- | :---------------------------------------------- |
| `sync`           |                 | Memperbarui basis data repositori.              |
| `update`         |                 | Memperbarui perangkat lunak dan dependensi.     |
| `get <pkg>`      | `get gimp`      | Memasang perangkat lunak.                       |
| `search <pkg>`   | `search gimp`   | Mencari perangkat lunak berdasarkan basis data. |
| `remove <pkg>`   | `remove gimp`   | Menghapus perangkat lunak.                      |
| `info <pkg>`     | `info gimp`     | Informasi dari perangkat lunak yang terpasang.  |
| `filelist <pkg>` | `filelist gimp` | Daftar isi dari dependensi                      |
| `autoclean`      |                 | Menghapus cache dependensi kedaluwarsa.         |
| `repolist`       |                 | Melihat daftar repository.                      |
| `ll`             |                 | Melihat daftar direktori dan berkas.            |
| `ff`             |                 | Membuat ulang cache fonta.                      |
| `disk`           |                 | Melihat struktur sistem partisi.                |

Gunakan arah panah atas/bawah untuk mencari histori perintah terminal. Dan arah kanan untuk melanjutkan perintah yang sudah pernah diketik sebelumnya.

## Meta paket

Beberapa paket sudah kami kategorikan dengan meta paket seperti kompiler, codec audio dan video, wine emulator dan lain-lain. Paket ini diawali dengan `l7-pkg-`.

| Paket             | Fungsi                                         |
| :---------------- | :--------------------------------------------- |
| `l7-pkg-codec`    | Codec audio dan video.                         |
| `l7-pkg-compress` | Alat kompresi seperti zip dan tar.             |
| `l7-pkg-compiler` | Pengkompil perangkat lunak.                    |
| `l7-pkg-kde`      | KDE Plasma Lingkungan desktop.                 |
| `l7-pkg-kde-apps` | Perangkat lunak KDE Plasma Lingkungan desktop. |
| `l7-pkg-lamp`     | LAMP Web server.                               |
| `l7-pkg-rust`     | Pemrograman Rust dan kompiler.                 |
| `l7-pkg-xorg`     | X.org Window System.                           |
| `l7-pkg-wine`     | Wine penggerak perangkat lunak Windows.        |

Contoh penggunaan:
- Memasang wine :`doas xbps-install l7-pkg-rust`
- Memasang beberapa paket: `doas xbps-install l7-pkg-{rust,lamp}`
