---
title: Scrcpy Mirroring
weight: "7"

---

`scrcpy` berguna untuk melihat dan mengontrol perangkat android melalui komputer.

{{< toc >}}

## Cara Memasang Scrcpy

```shell

get android-udev-rules android-tools scrcpy

```

## Mengaktifkan layanan ADB

```shell
sudo ln -s /etc/service/adb /var/service/
```

## Aktifkan USB Debug di Android Smartphone

Setiap perangkat Android memiliki pengaturan yang berbeda-beda tergantung mereknya. Tetapi biasanya masuk di pengaturan developer.

- More Options
- Developer Options
- Aktifkan "USB Debugging"

## Menjalankan `scrcpy`

Kemudian jalankan `scrcpy` melalui konsole terminal atau krunner (Alt+F2). Selesai.

{{< figure src=/media/scrcpy-langitketujuh-id.webp alt="Scrcpy Mirroring LangitKetujuh OS">}}
