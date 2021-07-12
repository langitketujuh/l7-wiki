# Tanggal dan Waktu

## NTP Daemon

LangitKetujuh secara bawaan mengaktifkan layanan ntpd untuk sinkronisasi waktu secara otomatis sesuai dengan zona waktu setempat ketika tersambung dengan internet.

Cek layanan ntpd: `sudo vsv status ntpd`

## Dual Boot Windows

Pengaturan waktu di LangitKetujuh menggunakan `UTC`. Sedangkan Windows menggunakan RTC atau yang disebut dengan `localtime`. Jika dualboot dengan windows, akan terjadi konflik pengaturan tanggal dan waktu di sistem operasi LangitKetujuh.

Untuk mengatasi konflik, yaitu dengan menyamakan semua sistem waktu menggunakan `UTC` atau `localtime`. Solusi termudahnya adalah dengan merubah LangitKetujuh ke `localtime`.

Buka berkas `/etc/rc.conf` dengan teks editor (misalnya kate).
Ganti `#HARDWARECLOCK=UTC`. Menjadi `HARDWARECLOCK=localtime` (hapus tanda pagarnya).

Selanjutnya menonaktifkan fitur layanan ntpd dengan cara: `sudo rm /var/service/ntpd`.
