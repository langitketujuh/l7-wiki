# XDEB Konverter

## Fungsi Aplikasi

`XDEB` merupakan perkakas CLI sederhana untuk mengkonversi berkas `.deb` ke `.xbps`.

## Cara Memasang Xdeb

```bash
doas curl -s https://raw.githubusercontent.com/toluschr/xdeb/master/xdeb -o /usr/bin/xdeb
doas chmod +x /usr/bin/xdeb
doas xbps-install -Sy xz
```

## Cara Konversi dan Memasang Aplikasi

* Unduh dahulu berkas `aplikasi-1.2.3.deb` (sebagai contoh), Lalu cut aplikasinya.
* Buat direktori baru dengan nama `Deb` (sebagai contoh) dan buka direktorinya.
* Letakkan (paste) file `aplikasi-1.2.3.deb` ke dalam direktori `Deb`.
* Klik kanan `Open Terminal Here` untuk membuka terminal di direktori saat ini.
* Konversi aplikasi `deb` ke `xbps`
```bash
# xdeb -Sed <nama berkas aplikasi deb>
xdeb -Sed aplikasi-1.2.3.deb
```
* Memasang aplikasi. Biasanya ada petunjuk nama paket di akhir baris (misalnya `aplikasi-1.2.3_1`) setelah sukses mengkonversi `.deb`

```bash
# doas xbps-install -R binpkgs <nama aplikasi xbps>
doas xbps-install -R binpkgs aplikasi-1.2.3_1
```
* Selesai.
