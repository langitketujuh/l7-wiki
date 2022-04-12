# Server repositori

Lokasi server tier 1 yang digunakan saat ini yaitu [alpha.de.repo.voidlinux.org](https://alpha.de.repo.voidlinux.org) dari Finlandia. Alasan menggunakan server ini agar sistem lebih terbaru dalam pembaruan versi dependensi. Sama halnya dengan voidlinux yang menggunakan server [alpha.de.repo.voidlinux.org](https://alpha.de.repo.voidlinux.org).

Secara bawaan LangitKetujuh OS memasang `l7-repo` dan `void-repo-nonfree` dengan 3 url server, diantaranya:

- <https://alpha.de.repo.voidlinux.org/current>
- <https://alpha.de.repo.voidlinux.org/current/nonfree>
- <https://al.quds.repo.langitketujuh.id/current>

Jika menggunakan arsitektur `x86_64-musl` akan menggunakan repositori:

- <https://alpha.de.repo.voidlinux.org/current/musl>
- <https://alpha.de.repo.voidlinux.org/current/musl/nonfree>
- <https://al.quds.repo.langitketujuh.id/current/musl>

## Pengaturan

Alamat repositori dapat ditemukan didalam direktori `/usr/share/xbps.d` dan `/etc/xbps.d`, pengguna dapat menggantinya sesuai kebutuhan. Daftar mirror repositori dapat merujuk ke [repositori voidlinux](https://docs.voidlinux.org/xbps/repositories/mirrors/index.html).

## Multilib

Jika ingin memasang repo multilib 32bit, pengguna dapat memasang `void-repo-multilib`.

```sh
doas xbps-install -Sy void-repo-multilib
```

Jika membutuhkan multilib nonfree, pasang depedensi `void-repo-multilib-nonfree`.

```sh
doas xbps-install -Sy void-repo-multilib-nonfree
```

## Cek alamat repositori

Cara mengecek daftar repo dapat dilakukan dengan `repolist`. Keluaran yang dihasilkan akan terlihat seperti dibawah ini.

```sh
➜  ~ xbps-query -Lv #repolist
12751 https://alpha.de.repo.voidlinux.org/current (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   51 https://alpha.de.repo.voidlinux.org/current/nonfree (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   67 https://al.quds.repo.langitketujuh.id/current (RSA signed)
      Signed-by: LangitKetujuh Linux
      4096 10:33:f2:1f:6f:9d:f8:0a:66:63:48:2b:de:83:50:b1
```
