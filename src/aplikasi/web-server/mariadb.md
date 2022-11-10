# MariaDB

## Deskripsi

[MariaDB] merupakan versi pengembangan terbuka dan mandiri dari MySQL. Sejak diakuisisinya MySQL oleh Oracle pada September 2010, [Monty Program] sebagai penulis awal kode sumber MySQL memisahkan diri dari pengembangan dan membuat versi yang lebih mandiri yakni MariaDB.

## Cara memasang

```sh
get mariadb
```

## Hak akses

Beri hak akses `mysql` untuk pengguna.

```sh
doas usermod -a -G mysql $USER
```

## Aktifkan layanan

```sh
rsv enable mysqld
```

Cek layanan.

```sh
rsv list --enabled
```

## Konfigurasi mysql

```sh
doas mysql_secure_installation
```

[Monty Program]:https://mariadb.com/
[MariaDB]:https://mariadb.org/
