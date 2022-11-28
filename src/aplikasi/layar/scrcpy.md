# Scrcpy mirroring

## Deskripsi

Screen Copy atau yang lebih dikenal dengan [scrcpy] berguna untuk melihat dan mengontrol perangkat dengan pencerminan layar perangkat smartphone ke layar monitor desktop.

![Scrcpy Mirroring LangitKetujuh OS](../../media/image/scrcpy-langitketujuh-id.webp)

## Cara memasang

```sh
get android-udev-rules android-tools scrcpy
```

## Mengaktifkan layanan adb

Pastikan layanan adb sudah aktif. Cek dengan perintah ini:

```sh
rsv status adb
```

Apabila sudah aktif, maka terdapat tanda `run:`. Jika belum aktif, maka jalankan perintah ini:

```sh
rsv enable adb
```

## Aktifkan usb debug di android smartphone

Setiap perangkat Android memiliki pengaturan yang berbeda-beda tergantung mereknya. Tetapi biasanya masuk di pengaturan developer.

- More Options
- Developer `Options`.
- Aktifkan `USB Debugging`.

## Cara penggunaan

Jalankan [scrcpy] melalui konsole terminal atau menggunakan krunner (Alt+F2).

[scrcpy]:https://github.com/Genymobile/scrcpy
