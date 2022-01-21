# Scrcpy Mirroring

![Scrcpy Mirroring LangitKetujuh OS](../../media/image/scrcpy-langitketujuh-id.webp)

## Deskripsi

`scrcpy` berguna untuk melihat dan mengontrol perangkat dengan pencerminan layar perangkat smartphone ke layar monitor desktop.

## Cara Memasang Scrcpy

```bash
doas xbps-install android-udev-rules android-tools scrcpy
```

## Mengaktifkan layanan ADB

Pastikan layanan adb sudah aktif. Cek dengan perintah ini:

```bash
doas vsv status adb
```

Apabila bewarna hijau dan telah (`run`) maka adb sedang berjalan. Jika belum berjalan maka aktifkan dengan perintah ini:

```bash
doas ln -s /etc/sv/adb /var/service/
```

## Aktifkan USB Debug di Android Smartphone

Setiap perangkat Android memiliki pengaturan yang berbeda-beda tergantung mereknya. Tetapi biasanya masuk di pengaturan developer.

- More Options
- Developer Options
- Aktifkan "USB Debugging"

## Menjalankan `scrcpy`

Kemudian jalankan `scrcpy` melalui konsole terminal atau krunner (Alt+F2). Selesai.

