# XDEB konverter

## Deskripsi

[XDEB](https://github.com/toluschr/xdeb) merupakan perkakas CLI sederhana untuk mengonversi berkas `.deb` ke `.xbps` (ekstensi format paket voidlinux). Tetapi kami tidak menyarankan memasang suatu perangkat lunak yang terdapat pustaka systemd init, bisa berakibat fatal jika dipasang ke sistem operasi dengan runit init ini seperti di LangitKetujuh.
XDEB sendiri hanya bisa dipasang untuk arsitektur [x86_64](../../perbandingan/arsitektur.md) saja.

> Sebelum memasang aplikasi dari `.deb`, pastikan terlebih dahulu perangkat lunak tersebut tidak ada di [xbps](../../konfigurasi/paket/xbps.md), [vpsm](../../konfigurasi/paket/vpsm.md) dan [flatpak](../../konfigurasi/paket/flatpak.md). Jika ada, sebaiknya memasang dari paket manajer tersebut.

## Cara memasang

  ```
  get xdeb
  ```

## Penggunaan

Adapun tahapan mengkonversi berkas deb ke xbps sebagai berikut:
- Buat direktori (folder) baru dengan nama `XBPS` (sebagai contoh).
- Pindahkan berkas `.deb` yang diinginkan ke direktori tersebut, lalu masuk ke `XBPS`.
- Klik kanan `Open Terminal Here` untuk membuka terminal di direktori saat ini.
- Kemudian konversi berkas deb.
  ```
  xdeb -Sed aplikasi-1.2.deb
  ```
- Setelah berhasil konversi ada petunjuk nama paket di akhir baris, misalnya `aplikasi-1.2_1`. Kemudian pasang perangkat lunak tersebut.
  ```
  get -R binpkgs aplikasi-1.2_1
  ```
- Proses pemasangan telah selesai.

## Menghapus aplikasi deb

Seperti perintah menghapus biasanya di LangitKetujuh yang menggunakan `remove`.

```
remove aplikasi
```
