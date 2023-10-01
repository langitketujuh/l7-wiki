# PHP

## Deskripsi

[PHP] (Hypertext Preprocessor) adalah sebuah bahasa pemrograman server side scripting yang bersifat open source. PHP merupakan bahasa pemrograman server-side, maka setiap skrip dari PHP akan diproses di server. Kami merekomendasikan untuk menggunakan [Nginx] web server yang lebih hemat sumber daya.

## Cara memasang

```
get php php-apache php-cgi php-fpm php-gd php-mysql php-embed php-intl php-snmp
```

## Konfigurasi php-fpm

Selain `nano`, pengguna juga dapat menggunakan `vim` atau `hx`. Sebagai contoh versi PHP yang digunakan pada saat ini 8.2.

```
doas nano /etc/php8.2/php-fpm.d/www.conf
```

Ganti nama pengguna `http` dengan nama pengguna saat ini, nama pengguna dapat dicek dengan perintah `whoami`. Pada contoh kali ini menggunakan user `anon`.  Dan ganti juga nama group `http` menjadi `nginx`.

```
user = anon
group = nginx
```

Kemudian simpan.

## Konfigurasi php.ini

```
doas nano /etc/php8.2/php.ini
```

Ganti `memory_limit = 128M` menjadi `-1` agar tidak ada batasan memori.

```
memory_limit = -1
```

Aktifkan beberapa ekstensi dengan menghapus titik koma `;`, ganti nilai `M`, dan `Off` menjadi `On`.

```
extension=mysqli
extension=pdo_mysql
display_errors = On
post_max_size = 2048M
upload_max_filesize = 1024M
```

Simpan dan keluar. (Ctrl+x, Y, Enter)

## Layanan php-fpm

Aktifkan layanan php-fpm di versi 8.2.

```
doas rsv enable php-fpm8.2
```

Cek layanan

```
doas rsv status php-fpm8.2
```

Biasanya layanan `php-fpm8.2` akan error (down) belum dapat berjalan, hal ini normal sebab pengaturan php-fpm8.2 di [Nginx] web server belum dikonfigurasi.

[PHP]:https://www.php.net/
[Nginx]:nginx.md
