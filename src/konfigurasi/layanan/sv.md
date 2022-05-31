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
 ✔ NetworkManager       run     true      828      NetworkManager    1 hour
 ✔ acpid                run     true      823      acpid             1 hour
 ✔ adb                  run     true      817      adb               1 hour
 ✔ agetty-tty1          run     true      766      agetty            1 hour
 ✔ agetty-tty2          run     true      767      agetty            1 hour
 ✔ agetty-tty3          run     true      773      agetty            1 hour
 ✔ agetty-tty4          run     true      772      agetty            1 hour
 ✔ agetty-tty5          run     true      769      agetty            1 hour
 ✔ agetty-tty6          run     true      764      agetty            1 hour
 ✔ backlight            run     true      833      backlight         1 hour
 ✔ bluetoothd           run     true      816      bluetoothd        1 hour
 ✔ bluez-alsa           run     true      809      bluealsa          1 hour
 ✔ colord               run     true      805      colord            1 hour
 ✔ cupsd                run     true      801      cupsd             1 hour
 ✔ dbus                 run     true      798      dbus-daemon       1 hour
 ✔ earlyoom             run     true      802      earlyoom          1 hour
 ✔ ntpd                 run     true      791      isc-ntpd          1 hour
 ✔ sddm                 run     true      787      sddm              1 hour
 ✔ udevd                run     true      765      udevd             1 hour
 ✔ ufw                  run     true      782      ufw               1 hour
 ✔ usbmuxd              run     true      780      usbmuxd           1 hour
 ✔ uuidd                run     true      778      uuidd             1 hour
 ✔ zramen               run     true      776      pause             1 hour
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
