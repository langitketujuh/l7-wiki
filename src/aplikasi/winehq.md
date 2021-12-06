# WineHQ Penggerak Aplikasi Windows

## Deskripsi

[WineHQ](https://www.winehq.org/) adalah lapisan kompatibilitas yang mampu menjalankan aplikasi Windows pada beberapa sistem operasi yang sesuai dengan POSIX, seperti Linux, macOS, & BSD. Cara kerjanya yaitu dengan mensimulasikan logika Windows internal seperti mesin virtual atau emulator, Wine menerjemahkan panggilan API Windows ke panggilan POSIX saat itu juga, menghilangkan penalti kinerja dan memori dari metode lain dan memungkinkan pengguna untuk mengintegrasikan aplikasi Windows ke desktop dengan rapi.

## Memasang repositori multilib

Sebelum memasang WineHQ pastikan sudah memasang paket `void-repo-multilib`. Untuk arsitektur x86_64-musl dan i686 tidak perlu dilakukan.

```
sudo xbps-install -S void-repo-multilib
```

## Memasang WineHQ

Cara termudahnya dengan memasang [meta paket](../perintah-dasar/manajemen-paket.html#meta-paket) WineHQ yang sudah disediakan.

```
sudo xbps-install -S l7-pkg-wine
```

Tunggu sampai proses selesai.