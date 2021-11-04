# L7 Tools Pemasang

## Fungsi Aplikasi

L7-tools merupakan alat CLI untuk melakukan konfigurasi sistem seperti pembaruan, memasang aplikasi pihak ketiga, memasang profil warna dan pengaturan lainnya.

Misalnya:

- Memperbarui sistem: `sudo l7-tools --update`
- Downgrade aplikasi sistem: `sudo l7-tools --downgrade`
- Memasang profil warna Adobe ICC: `sudo l7-tools --adobe-icc`

Selengkapnya `l7-tools -h`.

```
➜  ~ l7-tools -h

LangitKetujuh Tools
Configuring tool and installing third-party

license : GPL-2.0-only
usage   : l7-tools [option]
option  :
          --update      -u    update system
          --remote      -r    remote from terminal
          --downgrade   -d    downgrade & uninstall program
          --help        -h    show this help
          --version     -v    show l7-tools version

        color profile:
          --adobe-icc   -a    install adobe icc
          --idea-icc    -i    install idealliance icc
          --eci-icc     -e    install eci icc
          --jpma-icc    -j    install jpma icc
          --vigc-icc    -g    install vigc icc
          --snap-icc    -g    install snap committee icc
```
