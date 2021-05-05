# Scrcpy Mirroring

## Fungsi Aplikasi

`scrcpy` berguna untuk melihat dan mengontrol perangkat android melalui komputer.

## Cara Memasang Scrcpy

```bash
get android-udev-rules android-tools scrcpy
```

## Mengaktifkan layanan ADB

```bash
sudo ln -s /etc/service/adb /var/service/
```

## Aktifkan USB Debug di Android Smartphone

Setiap perangkat Android memiliki pengaturan yang berbeda-beda tergantung mereknya. Tetapi biasanya masuk di pengaturan developer.

- More Options
- Developer Options
- Aktifkan "USB Debugging"

## Menjalankan `scrcpy`

Kemudian jalankan `scrcpy` melalui konsole terminal atau krunner (Alt+F2). Selesai.

![Scrcpy Mirroring LangitKetujuh OS](/media/image/scrcpy-langitketujuh-id.webp)
