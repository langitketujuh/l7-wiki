# Server repositori

Lokasi server tier 1 yang digunakan saat ini yaitu [repo-default.voidlinux.org](https://repo-default.voidlinux.org). Alasan menggunakan server ini agar sistem lebih terbaru dalam pembaruan versi dependensi. Sama halnya dengan voidlinux yang menggunakan server [repo-default.voidlinux.org](https://repo-default.voidlinux.org).

Secara bawaan LangitKetujuh OS memasang `l7-repo` dengan total 2 server:

- <https://repo-default.voidlinux.org/current>
- <https://al.quds.repo.langitketujuh.id/current>

Jika menggunakan arsitektur `x86_64-musl` akan menggunakan repositori:

- <https://repo-default.voidlinux.org/current/musl>
- <https://al.quds.repo.langitketujuh.id/current/musl>

## Pengaturan

Alamat repositori dapat ditemukan didalam direktori `/usr/share/xbps.d` dan `/etc/xbps.d`, pengguna dapat menggantinya sesuai kebutuhan. Daftar mirror repositori dapat merujuk ke [repositori voidlinux](https://docs.voidlinux.org/xbps/repositories/mirrors/index.html).

## Repo tembahan

Repositori tambahan perlu dipasang jika memerlukan paket yang tidak ada di repo utama. Misalnya, paket wine 32bit yang memerlukan repo multilib sehingga perlu memasang `void-repo-multilib`.

| Nama repositori       | Cara memasang                     |
| :-------------------- | :-------------------------------- |
| Void Nonfree          | `get void-repo-nonfree`           |
| Void Multilib         | `get void-repo-multilib`          |
| Void Multilib Nonfree | `get void-repo-multilib-nonfree`  |
| Void Debug            | `get void-repo-debug`             |

## Cek alamat repositori

Cara mengecek daftar repo dapat dilakukan dengan `repo`. Keluaran yang dihasilkan akan terlihat seperti dibawah ini.

```sh
➜  ~ repo
12847 https://repo-default.voidlinux.org/current/musl (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   76 https://al.quds.repo.langitketujuh.id/current/musl (RSA signed)
      Signed-by: LangitKetujuh Linux
      4096 10:33:f2:1f:6f:9d:f8:0a:66:63:48:2b:de:83:50:b1
```
