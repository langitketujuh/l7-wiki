# Konversi tipe disk

## Merubah MBR ke GPT tanpa format

Terkadang disk setelah diperiksa ternyata adalah MBR (untuk boot mode legacy). Padahal saat ini boot mode yang digunakan adalah UEFI, berarti saat ini sedang migrasi dari legacy ke UEFI. Maka disk perlu dikonversi dari MBR ke GPT.

Gunakan `gdisk` untuk konversinya. Pada contoh dibawah ini misalnya disk yang digunakan adalah `sda`. Dan jangan lupa untuk umount disk yang akan dikonversikan.

```
doas gdisk /dev/sda
```

- Ketik `w` untuk menjadikan disk ke GPT.
- Ketik `y` untuk konfirmasi proses.

## Merubah GPT ke MBR tanpa format

Kami rasa sangat disayangkan bila disk dikonversi ke MBR, karena seperti mengalami penurunan fitur. Jika terpaksa konversi tetap gunakan `gdisk`. Pada contoh dibawah ini misalnya disk yang akan dipasang LangitKetujuh adalah `sda`. Jangan lupa untuk unmount disk yang akan dikonversikan.

```
doas gdisk /dev/sda
```

- Ketik `r` untuk recovery dan pilihan tranformasi, `enter`.
- Ketik `g` untuk konversi GPT ke MBR, `enter`.
- Ketik `w` untuk write, `enter`.
- Ketik `Y`, `enter` untuk menerapkan konversinya.
