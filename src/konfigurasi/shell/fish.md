# Fish shell

LangitKetujuh untuk pengguna normal secara bawaan menggunakan `fish-shell` sebagai shell utamanya. Tetapi bisa juga menggunakan shell lain seperti bash, ion, zsh dan sebagainya. Periksa shell yang digunakan dengan `echo $SHELL`. Cek ketersediaan shell yang ada di sistem dengan `chsh -l`.

## Singkatan

Beberapa singkatan yang digunakan di LangitKetujuh OS.

| Perintah              | Fungsi                                          |
| `disk`                | Melihat struktur sistem partisi.                |
| `list`                | Melihat daftar repository.                      |
| `ll`                  | Melihat daftar direktori dan berkas.            |

## Konfigurasi dengan web

Fitur menarik dari fish-shell yaitu terdapat pengaturan berbasis web. Seperti mengatur warna tema, fungsi, singkatan, melihat perintah yang pernah diketik sebelumnya (history). Jalankan perintah dibawah ini untuk membuka konfigurasi melalui web.

```
fish_config
```

![Fish Shell LangitKetujuh OS](../../media/image/fish-shell-langitketujuh-id.webp)

Untuk menghentikan proses, tekan enter di konsolenya.

## Memasang ulang konfigurasi

```
get -y l7-fish-shell
```

Pasang konfigurasi tambahannya.

```
cp -rfv /etc/skel/.config/fish/ ~/.config/
```

Lalu logout atau reboot.
