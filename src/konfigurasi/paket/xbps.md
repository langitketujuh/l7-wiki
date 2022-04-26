# XBPS paket manajer

## Perintah dasar

Perintah dasar di Langitketujuh memanfaatkan fitur fungsi pada [fish-shell](../shell/fish.md) untuk mempercepat menyingkat perintah yang sebenarnya. Misalnya, ketika mengetik `update` pada dasarnya menjalankan `get -S`. Jika berjalan diatas user root akan menjalankan `xbps-install -S` saja tanpa doas. Demikian pula perintah lainnya yang seperti dibawah ini.

| Perintah         | Contoh          | Fungsi                                          |
| :--------------- | :-------------- | :---------------------------------------------- |
| `update`         |                 | Memperbarui basis data repositori.              |
| `upgrade`        |                 | Memperbarui perangkat lunak dan dependensi.     |
| `get <pkg>`      | `get gimp`      | Memasang perangkat lunak.                       |
| `search <pkg>`   | `search gimp`   | Mencari perangkat lunak berdasarkan basis data. |
| `remove <pkg>`   | `remove gimp`   | Menghapus perangkat lunak.                      |
| `info <pkg>`     | `info gimp`     | Informasi dari perangkat lunak yang terpasang.  |
| `list <pkg>`     | `list gimp`     | Daftar isi dari dependensi                      |
| `autoclean`      |                 | Menghapus cache dependensi kedaluwarsa.         |
| `disk`           |                 | Melihat struktur sistem partisi.                |
| `list    `       |                 | Melihat daftar repository.                      |
| `ll`             |                 | Melihat daftar direktori dan berkas.            |

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
- Memasang rust :`get l7-pkg-rust`
- Memasang beberapa paket: `get l7-pkg-{rust,lamp}`
