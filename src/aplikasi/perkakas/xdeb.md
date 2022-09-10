# XDEB konverter

## Deskripsi

[XDEB](https://github.com/toluschr/xdeb) merupakan perkakas CLI sederhana untuk mengkonversi berkas `.deb` ke `.xbps`. Tetapi kami tidak menyarankan memasang suatu perangkat lunak yang terdapat pustaka systemd init, bisa berakibat fatal jika dipasang ke sistem operasi dengan runit init ini seperti di LangitKetujuh.

Sebelum memasang dari `deb`, pastikan terlebih dahulu perangkat lunak tersebut tidak ada di [xbps](../../konfigurasi/paket/xbps.md), [vpsm](../../konfigurasi/paket/vpsm.md) dan [flatpak](../../konfigurasi/paket/flatpak.md). Jika ada, sebaiknya memasang dari paket manajer tersebut.

XDEB sendiri hanya bisa dipasang untuk arsitektur [x86_64](../../perbandingan/arsitektur.md) saja.

## ## Memasang

```sh
doas curl -s https://raw.githubusercontent.com/toluschr/xdeb/master/xdeb -o /usr/bin/xdeb
doas chmod +x /usr/bin/xdeb
get xz
```

## Cara konversi

- Buat direktori baru dengan nama `XBPS` (sebagai contoh).
- Pindahkan berkas `.deb` yang diinginkan ke direktori tersebut, lalu masuk ke `XBPS`.
- Klik kanan `Open Terminal Here` untuk membuka terminal di direktori saat ini.
- Kemudian konversi berkas deb.
```sh
# xdeb -Sed <nama berkas perangkat lunak deb>
xdeb -Sed aplikasi-1.2.deb
```
- Setelah berhasil konversi ada petunjuk nama paket di akhir baris, misalnya `aplikasi-1.2_1`. Kemudian pasang perangkat lunak tersebut.

```sh
# get -R binpkgs <nama perangkat lunak xbps>
get -R binpkgs aplikasi-1.2_1
```
- Proses pemasangan telah selesai.
