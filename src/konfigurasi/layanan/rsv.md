# Runit init

Init merupakan daemon proses yang terus berjalan hingga sistem dimatikan. Sedangkan [Runit](http://smarden.org/runit/) sendiri merupakan salah satu manajemen init pengganti [systemd](https://systemd.io/). Proses booting runit terlihat saat pertama kali menyalakan komputer.

![Runit LangitKetujuh OS](../../media/image/runit-langitketujuh-id.webp)

Runit menggunakan perkakas `sv` untuk mengontrol layanan. Seperti melihat status, mengaktifkan, menghapus, menghentikan dan menyalakan ulang layanan.

Tetapi kami sarankan menggunakan `rsv` untuk mengontrol setiap layanan yang ada di sistem.

```
get rsv
```

## Status layanan

```sh
rsv list
```

Layanan yang aktif saja.

```sh
rsv list --enabled
```

## Mengaktifkan layanan

```sh
rsv enable namalayanan
```

## Menonaktifkan layanan

```sh
rsv disable namalayanan
```

## Status layanan

```sh
rsv status namalayanan
```
