# OpenDoas Eksekutor Perintah

OpenDoas (lebih dikenal dengan doas) merupakan porting `doas` dari OpenBSD yang digunakan sebagai alternatif sudo. Kode dasarnya pun 95% berfungsi seperti sudo. Dengan doas pengeksekusi perintah di sistem bisa lebih cepat dan sederhana.

Didalam paket `l7-opendoas` sebagai konfigurasi tambahan yang siap pakai. Manfaatnya untuk mempercepat alur kerja xbps seperti memperbarui, memasang dan menghapus aplikasi. Kini kami menggunakan doas sebagai alternatif sudo.

```
get -S l7-tools
```

Kemudian reboot.

Dengan `l7-tools` terbaru secara otomatis sudah menerapkan doas sebagai eksekutornya dan doas dan konfigurasinya akan terpasang juga. Namun autokomplit fish masih belum terupdate untuk LangitKetujuh OS versi 20210921 dan sebelumnya. Anda sebaiknya mengikuti juga panduan dibawah ini.

## Memperbarui autokomplit `doas`

Jika setelah memperbarui sistem perintah yang digunakan masih sudo, maka Anda perlu menggantinya dengan doas di variabel autokomplit Fish shell.

```
cd ~/.config/fish/
mv fish_variables fish_variables.bak # untuk backup
cp -iv /etc/skel/.config/fish/fish_variables ~/.config/fish/
```

## Mengganti history perintah `sudo` menjadi `doas`

Perintah yang sebelumnya pernah dieksekusi atau history yang menggunakan sudo, disarankan diganti menjadi doas. Sekalian hapus juga singkatan yang tidak diperlukan.

```
abbr --erase su
abbr --add sudo 'doas'
```

Lalu ganti history sudo menjadi doas.

```
sed -i 's/sudo/doas/' ~/.local/share/fish/fish_history
sed -i 's/sudo/doas/' ~/.bash_history
```
