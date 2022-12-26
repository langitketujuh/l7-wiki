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

Kofigurasi saat menjalankan mariadb pertama kalinya.

```
doas mysql_secure_installation
```
* `Enter current password for root (enter for none):`, isikan kata sandi pengguna `root` yang baru.
* `Switch to unix_socket authentication [Y/n]`, ketik `y`.
* `Change the root password? [Y/n]`, ketik `y` isikan kata sandi pengguna `root` lagi.
* `Remove anonymous users? [Y/n]`, ketik `y` untuk menghapus akun pengguna anonim.
* `Disallow root login remotely? [Y/n]`, ketik `y` untuk tidak memberikan izin akses via remot.
* `Remove test database and access to it? [Y/n]`, ketik `y` untuk menghapus basis data tes.
* `Reload privilege tables now? [Y/n]`, ketik `y` untuk memuat ulang perizinan (privilage) terhadap pengguna yang telah dibuat.

## Aktifkan binary log

Buat berkas baru.

```
doas nano /etc/my.cnf
```

Isikan pengaturan binary log

```
[mysqld]
log_bin = bin-log
log_bin_index = bin-log.index
max_binlog_size = 100M
binlog_format = row
```

Simpan dan keluar. (Ctrl+x, Y, Enter)

## Login root mariadb

Dikarenakan sudah mengonfigurasi maka pengguna sudah dapat masuk dengan akun `root`. Namun root tidak dapat login di phpMyAdmin sebelum dilakukan modifikasi menjadi skema bawaan.

```
doas mysql -u root -p
```

Ganti `secretpass` dengan sandi rahasia `root` anda sebelumnya.

```
ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('secretpass');
```

Ketik `exit` untuk keluar.

[Monty Program]:https://mariadb.com/
[MariaDB]:https://mariadb.org/
