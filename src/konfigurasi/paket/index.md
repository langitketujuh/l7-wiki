# Manajemen paket

Pada bagian ini menjelaskan perintah dasar yang harus diketahui untuk pengguna sistem operasi LangitKetujuh. Seperti cara memasang paket, mencari paket, menghapus paket, info paket, daftar isi paket dan sebagainya.

## Perbandingan perintah

Berikut ini perbandingan perintah paket manager [xbps](xbps.md), [vpsm](vpsm.md), [flatpak](flatpak.md) dan [nix](nix.md) di LangitKetujuh OS.

| XBPS          | VPSM         | Flatpak    | Nix           | Deskripsi                                         |
| :------------ | :----------- | :--------- | :------------ | :------------------------------------------------ |
| `update`      | `vupdate`    | -          | `nupdate`     | Memperbarui basis data repositori.                |
| `upgrade`     | `vupgrade`   | `fupgrade` | `nupgrade`    | Memperbarui perangkat lunak dan dependensi.       |
| `get`         | `vget`       | `fget`     | `nget`        | Memasang perangkat lunak.                         |
| `search`      | `vsearch`    | `fsearch`  | `nsearch`     | Mencari perangkat lunak.                          |
| `remove`      | `vremove`    | `fremove`  | `nremove`     | Menghapus perangkat lunak.                        |
| `query`       | `vquery`     | -          | `nquery`      | Informasi dari perangkat lunak yang terpasang.    |
| `list`        | -            | -          | -             | Daftar isi dari dependensi.                       |
| `deps`        | -            | -          | -             | Melihat daftar dari dependensi paket.             |
| `reconfigure` | -            | -          | -             | Mengatur ulang konfigurasi paket yang terpasang.  |
| `autoclean`   | `vautoclean` | -          | `nautoclean`  | Menghapus cache dependensi kedaluwarsa.           |
