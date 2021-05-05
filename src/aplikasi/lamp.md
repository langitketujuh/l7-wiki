# LAMPP Devops

## 1. Memasang depedensi

### PHP

```bash
get php
```

### Ekstensi PHP

```bash
get php-apache php-cgi php-fpm php-gd php-embed php-intl php-snmp
```

### PhpMyAdmin

```bash
get phpMyAdmin
```

### Web Server

Sebagai web server bisa menggunakan nginx atau apache. Pilih salah satu. Disarankan menggunakan Nginx

```bash
get nginx
```

Jika menggunakan apache.

```bash
get apache
```

### Memasang MariaDB

```bash
get mariadb
```

## 2. Mengaktifkan Servis

```bash
# Webserver pilih salah satu, apache atau nginx

sudo ln -s /etc/sv/nginx /var/service/    #nginx
sudo ln -s /etc/sv/php-fpm /var/service/  #php-fpm

sudo ln -s /etc/sv/apache /var/service/   #apache (jika menggunakan nginx lewati langkah ini)

# Database
sudo ln -s /etc/sv/mysqld /var/service/   #mariadb
```

## 3. Konfigurasi

### Nginx

Cek http port

```bash
ss -plt4
```

Berikan izin untuk port http dan https

```bash
sudo ufw allow http
sudo ufw allow https
```

Mengaktifkan dan melihat status firewall

```
ufw enable
ufw status numbered
```

### Php-Fpm

```bash

```

### Apache (Jika Anda menggunakan nginx lewati langkah ini) 

Jika menggunakan apache. Buka pengaturan `httpd.conf`.

```bash
sudo nano /etc/apache/httpd.conf
```

Hapus tanda pagar

`#LoadModule mpm_event_module modules/mod_mpm_event.so`

Menjadi

`LoadModule mpm_event_module modules/mod_mpm_event.so`

`ctrl+x`. Save, Yes.

Untuk mengaktifkan PHP7 memerlukan modul tambahan. Caranya:

```bash
sudo nano /etc/apache/httpd.conf
```

Tambahkan baris berikut ini di akhir `LoadModule`. (sekitar baris 184)

```bash
LoadModule php7_module /usr/libexec/httpd/modules/libphp7.so
AddHandler php7-script .php
```

Tambahkan baris berikut di akhir baris

```bash
Include /etc/apache/extra/php7_module.conf
```
`ctrl+x`. Save, Yes.

Kemudian restart web servis

```bash
sudo sv restart apache
sudo sv restart nginx
```

### MariaDB

```bash
sudo nano /etc/php/php.ini
```

Hapus tanda pagar `#extension=mysqli` Menjadi `extension=mysqli`.

`ctrl+x`. Save, Yes.

### PhpMyAdmin

```bash
sudo nano /etc/apache/extra/phpmyadmin.conf
```

Tambahkan teks berikut ini.

```bash
Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
<Directory "/usr/share/webapps/phpMyAdmin">
    DirectoryIndex index.php
    AllowOverride All
    Options FollowSymlinks
    Require all granted
</Directory>
```

`ctrl+x`. Save, Yes.

```bash
sudo nano /etc/apache/httpd.conf
```

Tambahkan teks berikut ini di akhir baris.

```bash
#... phpMyAdmin configuration
Include /etc/apache/extra/phpmyadmin.conf
```

`ctrl+x`. Save, Yes.
