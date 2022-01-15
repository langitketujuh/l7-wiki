# Jenis Shell

LangitKetujuh untuk pengguna normal secara bawaan menggunakan `fish-shell` sebagai shell utamanya. Tetapi Anda bisa juga menggunakan shell lain seperti bash, ion, zsh dan sebagainya.

Periksa shell apa yang Anda gunakan dengan `echo $SHELL`. Cek ketersediaan shell yang ada di sistem dengan `chsh -l`.

### Menjalankan bash

```bash
bash
```

### Mengganti fish-shell ke bash secara permanen

```bash
doas chsh -s /usr/bin/bash $USER
```
Kemudian logout atau reboot.
