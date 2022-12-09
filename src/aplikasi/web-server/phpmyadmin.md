# phpMyAdmin

## Deskripsi

[phpMyAdmin] adalah perangkat lunak bebas yang ditulis dalam bahasa pemrograman PHP yang digunakan untuk menangani administrasi MySQL melalui website WWW (World Wide Web). phpMyAdmin mendukung berbagai operasi MySQL, diantaranya mengelola basis data, tabel-tabel, bidang (fields), relasi (relations), indeks, pengguna (users), perizinan (permissions), dan lain-lain.

## Cara memasang

```
get phpMyAdmin
```

## Symlink

Agar dapat diakses, pindahkan jalur phpMyAdmin ke nginx dengan symlink.

```
doas ln -s /usr/share/webapps/phpMyAdmin /usr/share/nginx/html/
```

## Konfigurasi php.ini

```
kate /etc/php/php.ini
```

Aktifkan ekstensi `mysqli` dengan menghapus titik koma `;` menjadi:

```
extension=mysqli
```

## Restart layanan

```
doas rsv restart php-fpm
doas rsv restart nginx
```

Cek semua layanan.

```
doas rsv list --enabled
```

## Halaman phpMyAdmin

Pengguna dapat mengaksesnya lelalui <http://localhost/phpMyAdmin>

![phpMyAdmin LangitKetujuh](../../media/image/phpmyadmin-langitketujuh-id.webp)

[phpMyAdmin]:https://www.phpmyadmin.net/
