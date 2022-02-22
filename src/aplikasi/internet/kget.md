# Kget

## Deskripsi

Kget merupakan perangkat lunak bebas sebagai pengelola unduhan. Manfaatnya, pengguna dapat menghentikan atau melanjutkan unduhan sehingga resiko kegagalan mengunduh dapat diminimalisir. Selain itu terdapat plugins tambahan untuk mengunduh berkas torrent.

![Kget LangitKetujuh OS](../../media/image/kget-langitketujuh-id.webp)

## Cara memasang

```sh
doas xbps-install -S {,l7-}kget
cp -fv /etc/skel/.config/kgetrc ~/.config/
cp -fv /etc/skel/.config/autostart/org.kde.kget.desktop ~/.config/autostart/
```

## Pengaturan tambahan

- Terintegrasi dengan kde global, sehingga unduhan akan terlihat di bagian notifikasi panel bar.
