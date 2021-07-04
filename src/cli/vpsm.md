# VPSM Xbps-src Wrapper

## Fungsi Aplikasi

`VPSM` merupakan wrapper xbps-src agar lebih ringkas memasang atau kompil suatu aplikasi, baik yang free maupun yang nonfree restricted. Hal ini cukup mudah menggunakan vpsm dari pada memasang aplikasi sesuai readme docs di xbps-src.

## 1. Memasang `vpsm`

```bash
get vpsm
```

## 2. Vpsm Config

Jika Anda memasang LangitKetujuh diatas versi `20210328` maka cukup konfigurasi dengan perintah

```bash
vpsm_config
```

Tunggu sampai proses selesai. Kemudian lanjut ke [tahap nomer 6 perintah dasar vpsm](#6-perintah-dasar-vpsm)


## 3. Mengatur path void-packages ke .cache

```bash
set -Ux XBPS_DISTDIR $HOME/.cache/void-packages
```

## 4. Kloning void-packages.git tanpa histori.

```bash
git clone --depth 1 git://github.com/void-linux/void-packages.git $XBPS_DISTDIR
```

## 5. Membangun bootstrap

```bash
vpsm be
vpsm bb
```

Persiapan selesai.

----

## 6. Perintah dasar `vpsm`

Perintah              | Contoh              |Fungsi
 :---                 | :---                | :---
`vpsm i <packages>`   | `vpsm i zoom`       | memasang aplikasi (install)
`vpsm ss <string>`    | `vpsm ss art`       | mencari aplikasi dengan kata kunci
`vpsm un <packages>`  | `vpsm un zoom`      | menghapus aplikasi (uninstall)
`vpsm sw <packages>`  | `vpsp sw inkscape`  | mencari informasi aplikasi
`vpsm upr`            | -                   | update repositori
`vpsm bu`             | -                   | update bootstrap

Lebih lengkapnya `man vpsm`.

## 7. Daftar aplikasi yang sering diinstall

Perintah                  | Aplikasi
 :---                     | :--- 
`vpsm i msttcorefonts`    | Microsoft Font
`vpsm i android-studio`   | Android Studio
`vpsm i anydesk`          | Anydesk
`vpsm i brother-brscan4`  | Brother scan driver
`vpsm i cnijfilter2`      | Canon printer driver
`vpsm i discord`          | Discord
`vpsm i epson-inkjet2`    | Epson inkjet 2 printer driver
`vpsm i google-chrome`    | Google chrome
`vpsm i opera`            | Opera browser
`vpsm i slack-desktop`    | Slack-desktop
`vpsm i spotify`          | Spotify
`vpsm i teams-bin`        | Microsoft Teams
`vpsm i wps-office`       | WPS Office
`vpsm i zoom`             | Zoom

Selebihnya Anda dapat mencari aplikasi lain dengan `vpsm ss katakunci`
