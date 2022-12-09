# MariaDB

## Deskripsi

[MariaDB] merupakan versi pengembangan terbuka dan mandiri dari MySQL. Sejak diakuisisinya MySQL oleh Oracle pada September 2010, [Monty Program] sebagai penulis awal kode sumber MySQL memisahkan diri dari pengembangan dan membuat versi yang lebih mandiri yakni MariaDB.

## Cara memasang

```
get mariadb
```

## Hak akses

Beri hak akses `mysql` untuk pengguna.

```
doas usermod -a -G mysql $USER
```

## Aktifkan layanan

```
doas rsv enable mysqld
```

Cek layanan.

```
doas rsv status mysqld
```

## Konfigurasi mysql

```
doas mysql_secure_installation
```

[Monty Program]:https://mariadb.com/
[MariaDB]:https://mariadb.org/
