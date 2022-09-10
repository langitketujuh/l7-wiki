# Kget

## Deskripsi

[Kget] merupakan perangkat lunak bebas sebagai pengelola unduhan. Manfaatnya, pengguna dapat menghentikan atau melanjutkan unduhan sehingga resiko kegagalan mengunduh dapat diminimalisir. Selain itu terdapat plugins tambahan untuk mengunduh berkas torrent.

![Kget LangitKetujuh OS](../../media/image/kget-langitketujuh-id.webp)

## Cara memasang

```sh
get kget l7-kget
```

Gunakan pengaturan tambahan.

```sh
cp -fv /etc/skel/.config/kgetrc ~/.config/
cp -fv /etc/skel/.config/autostart/org.kde.kget.desktop ~/.config/autostart/
```

## Pengaturan tambahan

- Terintegrasi dengan kde plasma sehingga unduhan akan terlihat di bagian notifikasi panel bar.

[Kget]:https://invent.kde.org/network/kget
