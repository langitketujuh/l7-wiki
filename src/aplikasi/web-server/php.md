# PHP

## Deskripsi

[PHP] (Hypertext Preprocessor) adalah sebuah bahasa pemrograman server side scripting yang bersifat open source. PHP merupakan bahasa pemrograman server-side, maka setiap skrip dari PHP akan diproses di server. Kami merekomendasikan untuk menggunakan [Nginx] web server yang lebih hemat sumber daya.

## Cara memasang

```sh
get php php-apache php-cgi php-fpm php-gd php-mysql php-embed php-intl php-snmp
```

## Konfigurasi php-fpm

Anda dapat menggunakan teks editor lain seperti `nano` jika tidak familiar dengan `vim`.

```sh
kate /etc/php/php-fpm.d/www.conf
```

Ganti pengguna `http` dengan pengguna saat ini. Nama pengguna dapat dicek dengan perintah `whoami`. Pada contoh kali ini menggunakan user `l7`.

```
user = l7       # ganti dengan user saat ini
group = http
```

Kemudian simpan.

## Mengaktifkan layanan

```sh
rsv enable php-fpm
```

## Cek layanan

```sh
rsv list --enabled
```

Biasanya layanan `php-fpm` akan error belum dapat berjalan, hal ini normal sebab pengaturan php-fpm di [Nginx] web server belum dikonfigurasi.

[PHP]:https://www.php.net/
[Nginx]:nginx.md
