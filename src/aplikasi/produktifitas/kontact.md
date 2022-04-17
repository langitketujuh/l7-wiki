# Kontact

[Kontact](https://kontact.kde.org/components/kontact/) merupakan perangkat lunak bebas untuk manajemen personal informasi (PIM) yang terintegrasi dengan perangkat lunak KDE lainnya. Seperti KMail, KAddressBook, KOrganizer, dan Agregrator. Tujuannya untuk memudahkan pengelolaan surel dan informasi kontak dalam satu jendela saja.

![KontactLangitKetujuh OS](../../media/image/kontact-langitketujuh-id-1.webp)

## Cara memasang

```
doas xbps-install -Sy kontact korganizer kmail kaddressbook akregator kdepim-addons
```

Pasang juga anti-spam untuk Kmail.

```
doas xbps-install -Sy bogofilter spamassassin
```

Pasang konfigurasi tambahan.

```
doas xbps-install -Sy l7-kmail l7-korganizer

cp -rfv /etc/skel/.config/kmail2rc ~/.config/
cp -rfv /etc/skel/.config/korgacrc ~/.config/
```

Konfigurasi tersebut yaitu menambahkan beberapa pengaturan dasar:
- Mengaktifkan anti iklan di KMail.
- Mengaktifkan gambar `auto resize` di email.
- Mengaktifkan systray di panel.
- Mode membaca email disebelah kanan.
- Mengaktifkan **batal kirim** email selama 10 detik pertama.
- Mengaktifkan autostart untuk KOrganizer.

## Integrasi aplikasi

[KMail](https://kontact.kde.org/components/kmail/) memiliki fungsi sebagai email klien yang mendukung POP3 dan IMAP. Seperti gmail, yahoo, outlook dan sebagainya. Pengguna dapat langsung menggunakannya dengan memilih tab **Mail**, lalu masuk ke menu `Settings` > pilih `Add Account` untuk menambahkan akun baru.

![KMail LangitKetujuh OS](../../media/image/kontact-langitketujuh-id-2.webp)

[KAddressBook](https://kontact.kde.org/components/kaddressbook/) memudahkan memanajemen kontak dengan mudah, misalnya mengirim ajakan pertemuan atau rapat dengan email kontak yang sudah dimasukkan sebelumnya.

![Kontact LangitKetujuh OS](../../media/image/kontact-langitketujuh-id-3.webp)

[KOrganizer](https://kontact.kde.org/components/korganizer/) memiliki fungsi untuk mengatur kalender, penjadwalan, jurnal dan event.

![KOrganizer calendar LangitKetujuh OS](../../media/image/kontact-langitketujuh-id-4.webp)

Korganizer juga mendukung perkakas todo untuk membuat perencanaan dan merancang daftar kerja.

![KOrganizer todolist LangitKetujuh OS](../../media/image/kontact-langitketujuh-id-5.webp)

[Akregrator](https://kontact.kde.org/components/akregator/) berfungsi untuk membaca dan mendapatkan berita informasi dari feed rss situs favorit, seperti di KDE Dot dan planet KDE.

![Akregrator LangitKetujuh OS](../../media/image/kontact-langitketujuh-id-6.webp)