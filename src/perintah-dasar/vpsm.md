# VPSM Xbps-src Wrapper

## Fungsi Aplikasi

`VPSM` merupakan wrapper xbps-src agar lebih ringkas memasang atau kompil suatu aplikasi, baik yang free maupun yang nonfree restricted. Hal ini cukup mudah menggunakan vpsm dari pada memasang aplikasi sesuai readme docs di xbps-src.

## 1. Memasang `vpsm`

```bash
sudo xbps-install vpsm
```

## 2. Vpsm Config

Jika Anda memasang LangitKetujuh diatas versi `20210328` maka cukup konfigurasi dengan perintah

```bash
vpsm_config
```

Tunggu sampai proses selesai.

## 3. Perintah dasar `vpsm`

Perintah              | Contoh              |Fungsi
 :---                 | :---                | :---
`vpsm i <packages>`   | `vpsm i zoom`       | memasang aplikasi (install)
`vpsm ss <string>`    | `vpsm ss art`       | mencari aplikasi dengan kata kunci
`vpsm un <packages>`  | `vpsm un zoom`      | menghapus aplikasi (uninstall)
`vpsm sw <packages>`  | `vpsm sw inkscape`  | mencari informasi aplikasi
`vpsm upr`            | -                   | update repositori
`vpsm bu`             | -                   | update bootstrap

Lebih lengkapnya `man vpsm`.

## 4. Daftar aplikasi yang sering diinstall

Perintah                  | Aplikasi
 :---                     | :--- 
`vpsm i msttcorefonts`    | Microsoft Font
`vpsm i android-studio`   | Android Studio
`vpsm i anydesk`          | Anydesk
`vpsm i brother-brscan4`  | Brother scan driver
`vpsm i discord`          | Discord
`vpsm i epson-inkjet2`    | Epson inkjet 2 printer driver
`vpsm i google-earth-pro` | Google Earth Pro
`vpsm i google-chrome`    | Google chrome
`vpsm i opera`            | Opera browser
`vpsm i protonmail-bridge`| Protonmail Bridge
`vpsm i slack-desktop`    | Slack-desktop
`vpsm i spotify`          | Spotify
`vpsm i sublime-text4`    | Sublime Text 4 Editor
`vpsm i teams-bin`        | Microsoft Teams
`vpsm i wps-office`       | WPS Office
`vpsm i vivaldi`          | Vivaldi Browser
`vpsm i zoom`             | Zoom

Selebihnya Anda dapat mencari aplikasi lain dengan `vpsm ss katakunci`
