# OpenDoas Alternatif Sudo

OpenDoas (lebih dikenal dengan doas) merupakan porting `doas` dari OpenBSD yang digunakan sebagai alternatif sudo. 95% kode sumber dasar, berfungsi selayaknya sudo. Dengan doas pengeksekusi perintah di sistem bisa lebih cepat dan sederhana.

Di dalam paket `l7-opendoas` terdapat konfigurasi tambahan yang siap pakai (/etc/doas.conf). Manfaat doas tentunya untuk melewati kata sandi dan mempercepat alur kerja xbps seperti memperbarui, mengkonfigurasi, memasang dan menghapus aplikasi. Kini kami menggunakan doas sebagai alternatif sudo.

Hal pertama untuk pemasangan doas adalah dengan memperbarui l7-tools.

```
sudo xbps-install -S l7-tools
```

Kemudian reboot.

Dengan `l7-tools` terbaru secara otomatis sudah menerapkan doas sebagai eksekutornya dan doas serta konfigurasinya akan terpasang juga. Namun autokomplit fish masih belum terupdate untuk LangitKetujuh OS 20210921 dan versi sebelumnya. Anda sebaiknya mengikuti juga panduan dibawah ini.

## Memperbarui autokomplit `doas`

Jika autokomplit yang digunakan masih sudo, maka Anda perlu menggantinya dengan doas di variabel autokomplit Fish shell.

```
cd ~/.config/fish/
mv fish_variables fish_variables.bak # untuk backup
cp -iv /etc/skel/.config/fish/fish_variables ~/.config/fish/
```

## Mengganti history perintah `sudo` menjadi `doas`

Perintah yang sebelumnya pernah dieksekusi atau history yang menggunakan sudo, disarankan diganti menjadi doas. Sekalian hapus juga singkatan yang tidak diperlukan.

```
abbr --erase su
```

Sebagai opsional, jika ingin mengganti teks sudo menjadi doas.

```
abbr --add sudo 'doas'
```

Lalu ganti history sudo menjadi doas secara menyeluruh.

```
sed -i 's/sudo/doas/' ~/.local/share/fish/fish_history
sed -i 's/sudo/doas/' ~/.bash_history
```
