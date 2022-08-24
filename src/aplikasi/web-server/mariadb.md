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
doas ln -s /etc/sv/mysqld /var/service/
```

Cek layanan.

```sh
doas vsv
```

```sh
   SERVICE              STATE   ENABLED   PID      COMMAND           TIME
 ✔ mysqld               run     true      868      mysqld            2 hours

```

## Konfigurasi mysql

```sh
doas mysql_secure_installation
```

[Monty Program]:https://mariadb.com/
[MariaDB]:https://mariadb.org/
