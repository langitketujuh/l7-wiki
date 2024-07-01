# XBPS paket manajer

## Deskripsi

XBPS merupakan paket manager utama yang digunakan oleh Langitketujuh OS, sebagaimana voidlinux yang juga menggunakan XBPS. Sebelum menggunakan paket manager lainnya seperti [flatpak](flatpak.md) atau [nix](nix.md), kami sarankan untuk menggunakan `xbps` terlebih dahulu.

## Perintah dasar

Perintah dasar `xbps` di Langitketujuh memanfaatkan fitur fungsi pada [fish-shell](../shell/fish.md) untuk mempercepat menyingkat perintah yang sebenarnya. Beberapa perintah sudah menyesuaikan jika terdeteksi sebagai root atau pengguna biasa yang memerlukan tambahan `doas`.

| Perintah              | Contoh                | Fungsi                                          |
| :-------------------- | :-------------------- | :---------------------------------------------- |
| `update`              |                       | Memperbarui basis data repositori.              |
| `upgrade`             |                       | Memperbarui perangkat lunak dan dependensi.     |
| `get <pkg>`           | `get gimp`            | Memasang perangkat lunak.                       |
| `search <string>`     | `search gimp`         | Mencari perangkat lunak berdasarkan basis data. |
| `remove <pkg>`        | `remove gimp`         | Menghapus perangkat lunak.                      |
| `query <pkg>`         | `query gimp`          | Informasi dari perangkat lunak yang terpasang.  |
| `list <pkg>`          | `list gimp`           | Daftar isi dari dependensi.                     |
| `deps <pkg>`          | `deps gimp`           | Melihat daftar dari dependensi paket.           |
| `reconfigure <pkg>`   | `reconfigure gimp`    | Mengatur ulang konfigurasi paket yang terpasang.|
| `autoclean`           |                       | Menghapus cache dependensi kedaluwarsa.         |

Perintah yang membutuhkan argumen `<pkg>` seperti `get`,`search`,`remove`, dll sudah terdapat autokomplit dengan menekan tab. Sehingga akan memudahkan mencari paket yang akan dikehendaki.

Mencari histori perintah, gunakan arah panah atas/bawah. Sedangkan arah kanan digunakan untuk melanjutkan perintah yang sudah pernah diketik sebelumnya.

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
