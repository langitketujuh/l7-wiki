# VPSM xbps-src wrapper

VPSM pada umumnya digunakan untuk memasang perangkat lunak tidak bebas saja, jika perangkat lunak yang dimaksud ada di dalam repo utama maka sebaiknya jangan pakai VPSM. Cek perangkat lunaknya dengan `search <pkg>`. Jika tersedia, gunakan `get <pkg>` untuk memasangnya.

`VPSM` merupakan wrapper xbps-src agar lebih ringkas memasang atau kompil suatu perangkat lunak, baik yang free maupun yang tidak bebas restricted. Hal ini cukup mudah menggunakan vpsm dari pada memasang perangkat lunak sesuai panduan di [void-packages](https://github.com/void-linux/void-packages/blob/master/README.md).

## Konfigurasi vpsm

Jalankan perintah ini untuk membuat boostrap vpsm. Pengguna diharuskan melakukan ini untuk awal pemasangan.

```sh
vpsm_config
```

Tunggu sampai proses selesai.

## Perintah dasar `vpsm`

| Perintah           | Contoh             | Fungsi                                           |
| :----------------- | :----------------- | :----------------------------------------------- |
| `vpsm i <pkg>`     | `vpsm i zoom`      | memasang perangkat lunak (install)               |
| `vpsm ss <string>` | `vpsm ss art`      | mencari perangkat lunak dengan kata kunci/string |
| `vpsm un <pkg>`    | `vpsm un zoom`     | menghapus perangkat lunak (uninstall)            |
| `vpsm sw <pkg>`    | `vpsm sw inkscape` | mencari informasi perangkat lunak                |
| `vpsm upr`         | -                  | update repositori                                |
| `vpsm bu`          | -                  | update bootstrap                                 |

Lebih lengkapnya `man vpsm`.

## Daftar perangkat lunak yang sering dipasang

Ingat, sebelum memasang perangkat lunak jalankan `vpsm upr` terlebih dahulu untuk mendapatkan versi terbaru. Jika tidak, maka pemasangan akan mengkompilasi dependensi versi lama dan prosesnya akan lebih lama dari biasanya.

| Perintah                   | Perangkat lunak               |
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

Selebihnya dapat mencari perangkat lunak lainnya dengan `vpsm ss <string>`.
