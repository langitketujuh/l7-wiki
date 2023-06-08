# VPSM wrapper xbps-src

## Deskripsi

[VPSM](https://github.com/sineto/vpsm/) (Void-Packages Sources Management) pada umumnya digunakan untuk memasang perangkat lunak tidak bebas saja, jika perangkat lunak yang dimaksud ada di dalam repo utama maka sebaiknya jangan pakai `vpsm` tetapi gunakanlah [xbps](xbps.md). Cek perangkat lunaknya dengan `search <pkg>`. Jika tersedia, gunakan `get <pkg>` untuk memasangnya.

`vpsm` merupakan wrapper xbps-src agar lebih ringkas memasang atau kompil suatu perangkat lunak, baik yang free maupun yang tidak bebas restricted. Hal ini cukup mudah menggunakan vpsm dari pada memasang perangkat lunak sesuai panduan di [void-packages](https://github.com/void-linux/void-packages/blob/master/README.md).

## Perintah dasar

Perintah dasar `vpsm` dibawah ini sudah dikonfigurasi lebih mudah dengan fungsi fish-shell.

| Perintah           | Contoh         | Fungsi                                                |
| :----------------- | :------------- | :---------------------------------------------------- |
| `vupdate`          |                | Memperbarui basis data repositori dari void-packages. |
| `vupgrade`         |                | Memperbarui perangkat lunak dan dependensi.           |
| `vget <pkg>`       | `vget zoom`    | memasang perangkat lunak (install).                   |
| `vsearch <string>` | `vsearch zoom` | mencari perangkat lunak dengan kata kunci/string.     |
| `vremove <pkg>`    | `vremove zoom` | menghapus perangkat lunak (uninstall).                |
| `vquery <pkg>`     | `vquery zoom`  | mencari informasi perangkat lunak.                    |
| `vautoclean`       |                | Menghapus cache dependensi kedaluwarsa.               |

Khusus untuk menggunakan `vupgrade`, pastikan di halaman [waterfall](https://build.voidlinux.org/waterfall) voidlinux dalam posisi idle atau tidak mengkompil apapun. Khawatirnya anda mengkompil program dengan vupgrade tetapi di repo waterfall juga sedang mengkompil, lebih baik tunggu hingga di halaman waterfall tidak mengkompil paket apapun, biasanya bewarna abu-abu jika dalam keadaan idle.

## Direktori lokal void-packages

Lokasi baru `void-packages` berada di `~/.local/share`, sebelumnya berada di `~/.cache`.

Jika pengguna sebelumnya pernah menggunakan vpsm dengan menggunakan `l7-fish-shell` versi dibawah `0.1.5` disarankan untuk menjalankan perintah ini untuk memindahkan direktori `void-packages` ke `~/.local/share/`.

```sh
mv ~/.cache/void-packages/ ~/.local/share/
set -Ux XBPS_DISTDIR $HOME/.local/share/void-packages
```

## Daftar perangkat lunak yang sering dipasang

| Perintah                 | Perangkat lunak               |
| :----------------------- | :---------------------------- |
| `vget msttcorefonts`     | Microsoft Font                |
| `vget android-studio`    | Android Studio                |
| `vget anydesk`           | Anydesk                       |
| `vget brother-brscan4`   | Brother scan driver           |
| `vget discord`           | Discord                       |
| `vget epson-inkjet2`     | Epson inkjet 2 printer driver |
| `vget google-earth-pro`  | Google Earth Pro              |
| `vget google-chrome`     | Google chrome                 |
| `vget opera`             | Opera browser                 |
| `vget protonmail-bridge` | Protonmail Bridge             |
| `vget slack-desktop`     | Slack-desktop                 |
| `vget spotify`           | Spotify                       |
| `vget sublime-text4`     | Sublime Text 4 Editor         |
| `vget teams-bin`         | Microsoft Teams               |
| `vget wps-office`        | WPS Office                    |
| `vget vivaldi`           | Vivaldi Browser               |
| `vget zoom`              | Zoom                          |

Selebihnya dapat mencari perangkat lunak lainnya dengan `vsearch <string>`.
