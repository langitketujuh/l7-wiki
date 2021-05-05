# L7 Tools Pemasang

## Fungsi Aplikasi

L7-tools merupakan alat CLI untuk melakukan konfigurasi sistem seperti pembaruan, memasang aplikasi pihak ketiga, memasang profil warna dan pengaturan lainnya.

## Update sistem

Pembaruan sistem secara menyeluruh dapat mengguanakan `l7-tools`.

`sudo l7-tools --update`

## Memasang profil warna

Perintah                      | Color Profile
 :---                         | :---
`sudo l7-tools --adobe-icc`   | Adobe
`sudo l7-tools --idea-icc`    | Idealliance
`sudo l7-tools --eci-icc`     | ECI
`sudo l7-tools --jpma-icc`    | JPMA
`sudo l7-tools --scribus-icc` | Sribus
`sudo l7-tools --vigc-icc`    | VIGC
`sudo l7-tools --snap-icc`    | Snap committee

## Memasang Fish Shell

```bash
sudo l7-tools --fish
```

## Memasang Wine Emulator

```bash
sudo l7-tools --wine-emu
```
