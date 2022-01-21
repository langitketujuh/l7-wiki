# Localtime

Pengaturan waktu di LangitKetujuh menggunakan `UTC`. Sedangkan Windows menggunakan RTC atau yang disebut dengan `localtime`. Jika dualboot dengan windows, akan terjadi konflik pengaturan tanggal dan waktu di sistem operasi LangitKetujuh.

Untuk mengatasi konflik, yaitu dengan menyamakan semua sistem waktu `HARDWARECLOCK` menggunakan `localtime`. Solusi termudahnya adalah dengan merubah LangitKetujuh ke `localtime` di `/etc/rc.conf`. Anda cukup menjalankan perintah dibawah ini.

```
doas l7-tools --patch
```
