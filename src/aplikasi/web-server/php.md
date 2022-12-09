# PHP

## Deskripsi

[PHP] (Hypertext Preprocessor) adalah sebuah bahasa pemrograman server side scripting yang bersifat open source. PHP merupakan bahasa pemrograman server-side, maka setiap skrip dari PHP akan diproses di server. Kami merekomendasikan untuk menggunakan [Nginx] web server yang lebih hemat sumber daya.

## Cara memasang

```
get php php-apache php-cgi php-fpm php-gd php-mysql php-embed php-intl php-snmp
```

## Konfigurasi php-fpm

Selain `kate`, pengguna juga dapat menggunakan `nano` atau `vim`.

```
kate /etc/php/php-fpm.d/www.conf
```

Ganti nama pengguna (user) yaitu `http` dengan nama pengguna saat ini. Nama pengguna dapat dicek dengan perintah `whoami`. Pada contoh kali ini menggunakan user `anon`.

```
user = anon       # ganti http dengan user saat ini (whoami)
group = nginx     # ganti http dengan grup nginx
```

Kemudian simpan.
Pemasangan [Nginx] akan dipasang di panduan berikutnya.

## Mengaktifkan layanan

```
doas rsv enable php-fpm
```

## Cek layanan

```
doas rsv status php-fpm
```

Biasanya layanan `php-fpm` akan error (down) belum dapat berjalan, hal ini normal sebab pengaturan php-fpm di [Nginx] web server belum dikonfigurasi.

[PHP]:https://www.php.net/
[Nginx]:nginx.md
