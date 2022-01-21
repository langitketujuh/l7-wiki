# VPSM Xbps-src Wrapper

VPSM pada umumnya digunakan untuk memasang perangkat lunak nonfree saja, jika aplikasi yang Anda maksud ada di dalam repo utama maka sebaiknya jangan pakai VPSM. Cek aplikasi Anda dengan `search <pkg>`. Jika tersedia, gunakan `get <pkg>` untuk memasangnya.

`VPSM` merupakan wrapper xbps-src agar lebih ringkas memasang atau kompil suatu aplikasi, baik yang free maupun yang nonfree restricted. Hal ini cukup mudah menggunakan vpsm dari pada memasang perangkat lunak sesuai panduan di <a href="https://github.com/void-linux/void-packages/blob/master/README.md" target="_blank">void-packages</a>.

## Vpsm Config

Jalankan perintah ini untuk membuat boostrap vpsm. Anda diharuskan melakukan ini untuk awal pemasangan.

```bash
vpsm_config
```

Tunggu sampai proses selesai.

## Perintah dasar `vpsm`

| Perintah           | Contoh             | Fungsi                                    |
| :----------------- | :----------------- | :---------------------------------------- |
| `vpsm i <pkg>`     | `vpsm i zoom`      | memasang aplikasi (install)               |
| `vpsm ss <string>` | `vpsm ss art`      | mencari aplikasi dengan kata kunci/string |
| `vpsm un <pkg>`    | `vpsm un zoom`     | menghapus aplikasi (uninstall)            |
| `vpsm sw <pkg>`    | `vpsm sw inkscape` | mencari informasi aplikasi                |
| `vpsm upr`         | -                  | update repositori                         |
| `vpsm bu`          | -                  | update bootstrap                          |

Lebih lengkapnya `man vpsm`.

## Daftar aplikasi yang sering dipasang

| Perintah                   | Aplikasi                      |
| :------------------------- | :---------------------------- |
| `vpsm i msttcorefonts`     | Microsoft Font                |
| `vpsm i android-studio`    | Android Studio                |
| `vpsm i anydesk`           | Anydesk                       |
| `vpsm i brother-brscan4`   | Brother scan driver           |
| `vpsm i discord`           | Discord                       |
| `vpsm i epson-inkjet2`     | Epson inkjet 2 printer driver |
| `vpsm i google-earth-pro`  | Google Earth Pro              |
| `vpsm i google-chrome`     | Google chrome                 |
| `vpsm i opera`             | Opera browser                 |
| `vpsm i protonmail-bridge` | Protonmail Bridge             |
| `vpsm i slack-desktop`     | Slack-desktop                 |
| `vpsm i spotify`           | Spotify                       |
| `vpsm i sublime-text4`     | Sublime Text 4 Editor         |
| `vpsm i teams-bin`         | Microsoft Teams               |
| `vpsm i wps-office`        | WPS Office                    |
| `vpsm i vivaldi`           | Vivaldi Browser               |
| `vpsm i zoom`              | Zoom                          |

Selebihnya Anda dapat mencari perangkat lunak lain dengan `vpsm ss <string>`.
