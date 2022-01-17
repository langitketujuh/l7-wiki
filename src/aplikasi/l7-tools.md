# L7 Tools Pemasang

## Fungsi Aplikasi

L7-tools merupakan alat CLI untuk melakukan konfigurasi sistem seperti pembaruan, chroot mode, memasang grub, fiksasi boot order dan lain-lain.

Misalnya:

- Memasang grub: `doas l7-tools --grub`
- Memperbarui sistem: `doas l7-tools --update`
- Masuk ke mode chroot: `doas l7-tools --chroot`
- Memasang pengguna baru: `doas l7-tools --user`

Selengkapnya `l7-tools -h`.

```
➜  ~ l7-tools -h

LangitKetujuh Tools
Configuring tool and installing third-party

license : GPL-2.0-only
usage   : l7-tools [option]
option  :
          --chroot      -c    chroot mode
          --downgrade   -d    downgrade & uninstall program
          --grub        -g    install grub
          --patch       -p    reinstall patch
          --remote      -r    remote from terminal
          --update      -u    update system
          --user        -m    create new user
          --help        -h    show this help
          --version     -v    show l7-tools version
```
