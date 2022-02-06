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
 ✔ NetworkManager       run     true      837      NetworkManager    36 minutes
 ✔ acpid                run     true      843      acpid             36 minutes
 ✔ adb                  run     true      832      adb               36 minutes
 ✔ agetty-tty1          run     true      777      agetty            36 minutes
 ✔ agetty-tty2          run     true      772      agetty            36 minutes
 ✔ backlight            run     true      854      backlight         36 minutes
 ✔ bluetoothd           run     true      831      bluetoothd        36 minutes
 ✔ bluez-alsa           run     true      848      bluealsa          36 minutes
 ✔ colord               run     true      821      colord            36 minutes
 ✔ cupsd                run     true      817      cupsd             36 minutes
 ✔ dbus                 run     true      811      dbus-daemon       36 minutes
 ✔ earlyoom             run     true      816      earlyoom          36 minutes
 ✔ libvirtd             run     true      856      libvirtd          36 minutes
 ✔ ntpd                 run     true      809      isc-ntpd          36 minutes
 ✔ pipewire-pulse       run     true      803      pipewire-pulse    36 minutes
 ✔ pipewire             run     true      798      pipewire          36 minutes
 ✔ sddm                 run     true      884      sddm              36 minutes
 ✔ udevd                run     true      776      udevd             36 minutes
 ✔ ufw                  run     true      792      ufw               36 minutes
 ✔ usbmuxd              run     true      790      usbmuxd           36 minutes
 ✔ uuidd                run     true      785      uuidd             36 minutes
 ✔ virtlockd            run     true      862      virtlockd         36 minutes
 ✔ virtlogd             run     true      865      virtlogd          36 minutes
 ✔ zramen               run     true      783      pause             36 minutes
```

## Daftar layanan yang tersedia

```sh
ls /etc/sv/
```

Semua layanan tersedia di dalam direktori `/etc/sv/`.

```sh
NetworkManager  agetty-ttyUSB0  elogind          pipewire-pulse  virtlxcd
acpid           alsa            fancontrol       polkitd         virtnetworkd
adb             backlight       gpsd             rsyncd          virtnodedevd
agetty-console  bluetoothd      hddtemp          sddm            virtnwfilterd
agetty-generic  bluez-alsa      ip6tables        slapd           virtproxyd
agetty-hvc0     bmc-watchdog    ipmidetectd      smartd          virtqemud
agetty-hvsi0    boltd           ipmiseld         sshd            virtsecretd
agetty-serial   colord          iptables         sulogin         virtstoraged
agetty-tty1     cups-browsed    isc-ntpd         tcsd            virtvboxd
agetty-tty2     cupsd           libvirt-generic  udevd           virtxend
agetty-tty3     dbus            libvirtd         ufw             wpa_supplicant
agetty-tty4     dhcpcd          lsyncd           usbmuxd         zramen
agetty-tty5     dhcpcd-eth0     lvmetad          uuidd
agetty-tty6     dmeventd        mdadm            virtinterfaced
agetty-ttyAMA0  dnsmasq         ntpd             virtlockd
agetty-ttyS0    earlyoom        pipewire         virtlogd
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
doas rm /var/service/tlp
```
