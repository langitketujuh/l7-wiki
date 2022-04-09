# WebApp Manager

[Web Apps Manager](https://github.com/linuxmint/webapp-manager) atau yang disebut dengan `webapp-manager` adalah perangkat lunak yang digunakan untuk membuat aplikasi web seperti native dengan dukungan browser. Tujuannya lainnya untuk membuat pintasan aplikasi web dengan profil terisolasi. Seperti membuat aplikasi web WhatsApp, Facebook, Reddit, Instagram, Twitter dan lain sebagainya.

![Web Apps LangitKetujuh OS](../../media/image/webapp-manager-langitketujuh-id-1.webp)

Hasilnya adalah Anda dapat membuat di pintasan menu dan ditempatkan di task manager.

![Web Apps LangitKetujuh OS](../../media/image/webapp-manager-langitketujuh-id-3.webp)

![Web Apps LangitKetujuh OS](../../media/image/webapp-manager-langitketujuh-id-4.webp)

## Cara pemasangan

Cara memasangnya buka di konsole atau melalui [octoxbps](../perkakas/octoxbps.md).

```sh
doas xbps-install -Sy webapp-manager
```

## Cara penggunaan

- Klik ikon `+`
- Masukkan nama aplikasi web. Misalnya `WhatsApp`
- Masukkan nama url web. Misalnya `https://web.whatsapp.com`
- Pilih ikon.
- Pilih browser, misalnya `Firefox`.
- Klik OK.

![Web Apps LangitKetujuh OS](../../media/image/webapp-manager-langitketujuh-id-2.webp)

## Contoh web aplikasi

1. Facebook
    - Name: `Facebook`
    - Address: `https://facebook.com`
    - Icon: `facebook`

2. Instagram
    - Name: `Instagram`
    - Address: `https://instagram.com`
    - Icon: `instagram`

3. Spotify
    - Name: `Spotify`
    - Address: `https://open.spotify.com`
    - Icon: `spotify`

4. WhatsApp
    - Name: `WhatsApp`
    - Address: `https://web.whatsapp.com/`
    - Icon: `whatsapp`
