---
title: Dual boot LangitKetujuh bersama Windows
weight: 8
draft: true
---

{{< hint warning >}}
**Metode**\
Pemasangan dual boot LangitKetujuh bersama Windows adalah LangitKetujuh yang sudah terpasang dahulu, kemudian Windows menjadi sistem operasi kedua.
{{< /hint >}}

{{< toc >}}

## Membuat bootable Windows

Pasang WoeUSB cli

```
get WoeUSB-cli
```

Kemudian masuk ke direktori iso windows. Pastikan `sdX`diganti dengan nama perangkat disk. WoeUSB akan mengunduh `uefi-ntfs.img` dari repositori [rufus github](https://github.com/pbatard/rufus/raw/master/res/uefi/), maka internet Anda harus terhubung.

Ketika sudah terhubung dengan internet, lalu jalankan perintah dibawah ini.

```
sudo woeusb --device windows.iso /dev/sdX --target-filesystem NTFS
```
