# phpMyAdmin

## Deskripsi

[phpMyAdmin] adalah perangkat lunak bebas yang ditulis dalam bahasa pemrograman PHP yang digunakan untuk menangani administrasi MySQL melalui website WWW (World Wide Web). phpMyAdmin mendukung berbagai operasi MySQL, diantaranya mengelola basis data, tabel-tabel, bidang (fields), relasi (relations), indeks, pengguna (users), perizinan (permissions), dan lain-lain.

## Cara memasang

```sh
get phpMyAdmin
```

## Symlink

Agar dapat diakses, pindahkan jalur phpMyAdmin ke nginx dengan symlink.

```sh
doas ln -s /usr/share/webapps/phpMyAdmin /usr/share/nginx/html/
```

## Konfigurasi php.ini

```sh
doas vim /etc/php/php.ini
```

Aktifkan ekstensi `mysqli` dengan menghapus titik koma `;` menjadi:

```sh
extension=mysqli
```

## Restart layanan

```sh
doas sv restart php-fpm nginx
```

Cek layanan.

```sh
doas vsv
```

```sh
   SERVICE              STATE   ENABLED   PID      COMMAND           TIME
 ✔ nginx                run     true      822      nginx: master pro 2 hours
 ✔ php-fpm              run     true      4693     php-fpm.conf)     2 hours

```
## Halaman phpMyAdmin

Pengguna dapat mengaksesnya lelalui <http://localhost/phpMyAdmin>

![phpMyAdmin LangitKetujuh](../../media/image/phpmyadmin-langitketujuh-id.webp)

[phpMyAdmin]:https://www.phpmyadmin.net/
