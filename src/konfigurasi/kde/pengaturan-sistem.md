# Pengaturan sistem

## Mengaktifkan tap to click

Jika pengguna menggunakan laptop, kami sarankan untuk mengaktifkan tap-to-click agar dapat mengetuk touchpad dengan jari. Hal ini diperlukan sebab jika menggunakan sesi Wayland secara bawaan tidak mengaktifkan tap-to-click.

- Buka `System Settings`.
- Pada bagian `Hardware` pilih `Input Devices`.
- Pilih `Touchpad`.
- Pada bagian Tapping, beri ceklis `Tap-to-click`.
- Klik `Apply`.

![Tap to click LangitKetujuh](../../media/image/tap-to-click-langitketujuh-id.webp)

## Mengosongkan sesi awal

- Buka `System Settings`.
- Pilih `Startup and shutdown` > Pilh `Desktop session`.
- Pada pilihan `when logging in`, pilih `Start with an empty session`.
- Klik `Apply`.

![Session LangitKetujuh](../../media/image/empty-session-langitketujuh-id-1.webp)

## Mengganti global tema

- Buka di menu `Global Theme`.
- Pilih tema `Langitketujuh` atau tema yang diinginkan.
- Jika panel dan layout berantakan, serta ingin mengembalikan layout seperti semula. Maka berikan ceklis `Use layout desktop from theme`. Ini akan merubah panel, widget, dan wallpaper menjadi pengaturan layout awal.
- Klik `Apply`.

![Global theme plasma LangitKetujuh](../../media/image/global-theme-langitketujuh-id-1.webp)

## Mengganti tema GTK

Beberapa perangkat lunak dibangun dengan `GTK+3` seperti inkscape dan GIMP. Tema keduanya tidak dipengaruhi oleh global tema plasma, melainkan melalui pengaturan style gtk. Untuk menggantinya melalui cara dibawah ini, tetapi kami tetap menyarankan untuk tetap menggunakan tema bawaan saja yaitu `Breeze`.

- Buka di menu `Global Theme`.
- Pilih `Application Style`
- Klik `Configure GNOME/GTK Application Style`.
- Pilih GTK Theme `Breeze` atau tema yang diinginkan.
- Klik `Apply`.

![Global theme gtk LangitKetujuh](../../media/image/gtk-style-langitketujuh-id.webp)

## Mengganti bahasa

Multi bahasa hanya mendukung arsitektur glibc saja, yaitu `i686` dan `x86_64`. Jika menggunakan arsitektur `x86_64-musl` tidak dapat mengganti bahasa (default bahasa inggris `en_US`) karena tidak ada paket `glibc-locales` di repo musl.

- Buka `System Settings`.
- Pilh `Regional Settings` > Pilih `Languages`, klik `Modify`.

![Change language Krunner](../../media/image/languages-langitketujuh-id.webp)

- Klik `Add More`, tambahkan Bahasa yang diinginkan. Misalnya `Indonesia`.
- Klik bahasa yang dipilih, klik ikon `Move to top` sehingga bahasa yang dipilih menjadi yang pertama.
- Klik `Apply`.
- Buka konsole, jalankan perintah:
    ```
    doas nano /etc/default/libc-locales
    ```
- Ganti dan hapus tanda pagar bahasa yang berkaitan. Misalnya bahasa indonesia `#id_ID.UTF-8 UTF-8` menjadi `id_ID.UTF-8 UTF-8`. Lalu simpan (Ctrl+s), masukkan kata sandi jika diperlukan.
- Konfigurasi ulang dengan menjalankan:
    ```
    reconfigure -f glibc-locales
    ```
- Efek pindah bahasa akan tampak setelah logout atau reboot.

## Menambahkan layout bahasa

- Buka `System Settings`.
- Pilih `Input Devices` > `Keyboard` > Pilih tab `Layout`.
- Tambahkan layout dengan klik `+Add`.
- Sebagai contoh, ganti `Any language` menjadi `Arabic`, Variant: `Arabic (Buckwalter)`.
- Pilih `Preview` untuk melihat tata letak.
- Jika sudah sesuai, klik `OK` dan `Apply`.

Pengguna akan melihat layout bahasa di bagian panel bawah. Untuk mengganti antar layout, tekan `ctrl+alt+k`.

![Keyboard Layout LangitKetujuh](../../media/image/layout-kb-langitketujuh-id.webp)
