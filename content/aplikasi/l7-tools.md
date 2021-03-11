---
title: L7 Tools
weight: 5
draft: false
---

L7-tools merupakan cli tools untuk melakukan konfigurasi sistem seperti pembaruan, memasang aplikasi pihak ketiga dan memasang profil warna.

{{< toc >}}

## Update sistem

Pembaruan sistem secara menyeluruh dapat mengguanakan `l7-tools`.

`l7-tools --update`

## Memasang profil warna

{{< expand "Adobe icc" >}}
```shell
l7-tools --adobe-icc
```
{{< /expand >}}

{{< expand "Idealliance icc" >}}
```shell
l7-tools --idea-icc
```
{{< /expand >}}

{{< expand "ECI icc" >}}
```shell
l7-tools --eci-icc
```
{{< /expand >}}

{{< expand "JPMA icc" >}}
```shell
l7-tools --jpma-icc
```
{{< /expand >}}

{{< expand "Vigc icc" >}}
```shell
l7-tools --vigc-icc
```
{{< /expand >}}

{{< expand "Snap committee icc" >}}
```shell
l7-tools --snap-icc
```
{{< /expand >}}

## Memasang aplikasi via xbps-src

{{< expand "Microsoft Font" >}}
```shell
l7-tools --msttcorefonts
```
{{< /expand >}}

{{< hint warning >}}
**Khusus Glibc**\
Aplikasi Nonfree dibawah ini khusus pengguna glibc saja. Jika Anda menggunakan musl, memasang aplikasi nonfree dapat dilakukan dengan Flatpak atau kontainer Voidnrun.

{{< /hint >}}

{{< expand "Anydesk" >}}
```shell
l7-tools --anydesk
```
{{< /expand >}}

{{< expand "Brother scan driver" >}}
```shell
l7-tools --brother-brscan4
```
{{< /expand >}}

{{< expand "Canon printer driver" >}}
```shell
l7-tools --cnijfilter2
```
{{< /expand >}}

{{< expand "Discord" >}}
```shell
l7-tools --discord
```
{{< /expand >}}

{{< expand "Epson inkjet 2 printer driver" >}}
```shell
l7-tools --epson-inkjet2
```
{{< /expand >}}

{{< expand "Google chrome" >}}
```shell
l7-tools --google-chrome
```
{{< /expand >}}

{{< expand "Opera browser" >}}
```shell
l7-tools --opera
```
{{< /expand >}}

{{< expand "Skype" >}}
```shell
l7-tools --skype
```
{{< /expand >}}

{{< expand "Slack-desktop" >}}
```shell
l7-tools --slack-desktop
```
{{< /expand >}}

{{< expand "Spotify" >}}
```shell
l7-tools --spotify
```
{{< /expand >}}

{{< expand "Microsoft teams" >}}
```shell
l7-tools --teams-bin
```
{{< /expand >}}

{{< expand "WPS office" >}}
```shell
l7-tools --wps-office
```
{{< /expand >}}

{{< expand "Zoom" >}}
```shell
l7-tools --zoom
```
{{< /expand >}}
