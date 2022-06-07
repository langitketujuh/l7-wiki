# Runit init

Init merupakan daemon proses yang terus berjalan hingga sistem dimatikan. Sedangkan [Runit](http://smarden.org/runit/) sendiri merupakan salah satu manajemen init pengganti [systemd](https://systemd.io/). Proses booting runit terlihat saat pertama kali menyalakan komputer.

![Runit LangitKetujuh OS](../../media/image/runit-langitketujuh-id.webp)

Runit menggunakan perkakas `sv` untuk mengontrol layanan. Seperti melihat status, mengaktifkan, menghapus, menghentikan dan menyalakan ulang layanan.

Sedangkan `vsv` memiliki fungsi yang sama dengan `sv` namun lebih mudah dan sederhana.

## Daftar layanan yang aktif

```sh
doas sv status /var/service/*
```

Atau menggunakan `vsv`.

```sh
doas vsv
```

Contoh keluarannya.

```sh
   SERVICE              STATE   ENABLED   PID      COMMAND           TIME
 ✔ NetworkManager       run     true      817      NetworkManager    50 minutes
 ✔ agetty-tty1          run     true      770      agetty            50 minutes
 ✔ agetty-tty2          run     true      3010     agetty            24 minutes
 ✔ agetty-tty3          run     true      767      agetty            50 minutes
 ✔ agetty-tty4          run     true      772      agetty            50 minutes
 ✔ agetty-tty5          run     true      775      agetty            50 minutes
 ✔ agetty-tty6          run     true      776      agetty            50 minutes
 ✔ backlight            run     true      827      backlight         50 minutes
 ✔ bluetoothd           run     true      816      bluetoothd        50 minutes
 ✔ bluez-alsa           run     true      809      bluealsa          50 minutes
 ✔ cupsd                run     true      803      cupsd             50 minutes
 ✔ dbus                 run     true      801      dbus-daemon       50 minutes
 ✔ earlyoom             run     true      806      earlyoom          50 minutes
 ✔ ntpd                 run     true      794      isc-ntpd          50 minutes
 ✔ sddm                 run     true      788      sddm              50 minutes
 ✔ udevd                run     true      769      udevd             50 minutes
 ✔ ufw                  run     true      786      ufw               50 minutes
 ✔ usbmuxd              run     true      783      usbmuxd           50 minutes
 ✔ uuidd                run     true      781      uuidd             50 minutes
 ✔ zramen               run     true      779      pause             50 minutes
```

## Daftar layanan yang tersedia

```sh
ls /etc/sv/
```

Semua layanan tersedia di dalam direktori `/etc/sv/`.

```sh
NetworkManager/  agetty-tty5/     cupsd/        mdadm/           sulogin/
acpid/           agetty-tty6/     dbus/         mysqld/          tcsd/
adb/             agetty-ttyAMA0/  dhcpcd/       ntpd@            udevd/
agetty-console/  agetty-ttyS0/    dhcpcd-eth0/  pipewire/        ufw/
agetty-generic/  agetty-ttyUSB0/  dmeventd/     pipewire-pulse/  usbmuxd/
agetty-hvc0/     alsa/            earlyoom/     polkitd/         uuidd/
agetty-hvsi0/    backlight/       elogind/      privoxy/         wpa_supplicant/
agetty-serial/   bluetoothd/      gpsd/         rsyncd/          zramen/
agetty-tty1/     bluez-alsa/      ip6tables/    sddm/
agetty-tty2/     boltd/           iptables/     slapd/
agetty-tty3/     colord/          isc-ntpd/     smartd/
agetty-tty4/     cups-browsed/    lvmetad/      sshd/
```

## Status layanan

```sh
doas sv status <layanan>
```

Contoh:
```sh
doas sv status NetworkManager
```

## Mengaktifkan layanan

```sh
doas ln -s /etc/sv/<layanan> /var/service/
```

Contoh:
```sh
doas ln -s /etc/sv/dbus /var/service/
```

## Menonaktifkan layanan

```sh
doas rm /var/service/<layanan>
```

Contoh:
```sh
doas rm /var/service/ufw
```
