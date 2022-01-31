# WineHQ Penggerak Perangkat Lunak Windows

## Deskripsi

<a href="https://www.winehq.org/" target="_blank">WineHQ</a> adalah lapisan kompatibilitas yang mampu menjalankan perangkat lunak Windows pada beberapa sistem operasi yang sesuai dengan POSIX, seperti Linux, macOS, & BSD. Cara kerjanya yaitu dengan mensimulasikan logika Windows internal seperti mesin virtual atau emulator, Wine menerjemahkan panggilan API Windows ke panggilan POSIX saat itu juga, menghilangkan penalti kinerja dan memori dari metode lain dan memungkinkan pengguna untuk mengintegrasikan perangkat lunak Windows ke desktop dengan rapi.

## Memasang repositori multilib

Sebelum memasang WineHQ pastikan sudah memasang paket `void-repo-multilib`. Untuk arsitektur `x86_64-musl` dan `i686` tidak perlu dilakukan, karena paketnya tidak tersedia untuk arsitektur tersebut.

```
doas xbps-install -S void-repo-multilib
```

## Memasang WineHQ

Cara termudahnya dengan memasang [meta paket](../../konfigurasi/paket/xbps.html#meta-paket) WineHQ yang sudah disediakan.

```
doas xbps-install -S l7-pkg-wine
```

Tunggu sampai proses selesai.
