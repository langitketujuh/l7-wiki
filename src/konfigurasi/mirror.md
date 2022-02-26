# Mirror repositori

Lokasi server mirror terdekat dengan indonesia saat ini yaitu [void.webconverger.org](https://void.webconverger.org/) dari singapura. Alasan menggunakan mirror ini agar saat pemasangan atau memperbarui sistem lebih cepat dan mengurangi latensi yang tinggi. Sebelumnya menggunakan [alpha.de.repo.voidlinux.org](https://alpha.de.repo.voidlinux.org) dari denmark.

Secara bawaan LangitKetujuh OS memasang `l7-repo` dan `l7-repo-nonfree` yang menggunakan 3 server repositori, diantaranya:

- <https://void.webconverger.org/current> repo mirror voidlinux.
- <https://void.webconverger.org/current/nonfree> repo mirror nonfree voidlinux.
- <https://al.quds.repo.langitketujuh.id/current> repo langitketujuh.

Jika menggunakan arsitektur `x86_64-musl` akan menggunakan `/current/musl`.

## Pengaturan

Alamat repositori dapat ditemukan didalam direktori `/usr/share/xbps.d` dan `/etc/xbps.d`, pengguna dapat menggantinya sesuai kebutuhan. Daftar mirror repositori dapat merujuk ke [repositori voidlinux](https://docs.voidlinux.org/xbps/repositories/mirrors/index.html).

## Multilib

Jika ingin memasang repo multilib 32bit, pengguna dapat memasang `l7-repo-multilib`.

```sh
doas xbps-install -S l7-repo-multilib
```

Jika membutuhkan multilib nonfree, pasang depedensi `l7-repo-multilib-nonfree`.

```sh
doas xbps-install -S l7-repo-multilib-nonfree
```

## Cek alamat repositori

Cara mengecek daftar repo dapat dilakukan dengan `repolist`. Keluaran yang dihasilkan akan terlihat seperti dibawah ini.

```sh
12662 https://void.webconverger.org/current (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   51 https://void.webconverger.org/current/nonfree (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   64 https://al.quds.repo.langitketujuh.id/current (RSA signed)
      Signed-by: LangitKetujuh Linux
      4096 10:33:f2:1f:6f:9d:f8:0a:66:63:48:2b:de:83:50:b1
```
