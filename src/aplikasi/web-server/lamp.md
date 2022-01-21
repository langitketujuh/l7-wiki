# LAMPP Server

## Memasang depedensi

### PHP

```bash
doas xbps-install php
```

### Ekstensi PHP

```bash
doas xbps-install php-apache php-cgi php-fpm php-gd php-embed php-intl php-snmp
```

### PhpMyAdmin

```bash
doas xbps-install phpMyAdmin
```

### Web Server

Sebagai web server bisa menggunakan nginx atau apache. Pilih salah satu. Disarankan menggunakan Nginx

```bash
doas xbps-install nginx
```

Jika menggunakan apache.

```bash
doas xbps-install apache
```

### Memasang MariaDB

```bash
doas xbps-install mariadb
```

## 2. Mengaktifkan Servis

```bash
# Webserver pilih salah satu, apache atau nginx

doas ln -s /etc/sv/nginx /var/service/    #nginx
doas ln -s /etc/sv/php-fpm /var/service/  #php-fpm

doas ln -s /etc/sv/apache /var/service/   #apache (jika menggunakan nginx lewati langkah ini)

# Database
doas ln -s /etc/sv/mysqld /var/service/   #mariadb
```

## 3. Konfigurasi

### Nginx

Cek http port

```bash
ss -plt4
```

Berikan izin untuk port http dan https

```bash
doas ufw allow http
doas ufw allow https
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
doas nano /etc/apache/httpd.conf
```

Hapus tanda pagar

`#LoadModule mpm_event_module modules/mod_mpm_event.so`

Menjadi

`LoadModule mpm_event_module modules/mod_mpm_event.so`

`ctrl+x`. Save, Yes.

Untuk mengaktifkan PHP7 memerlukan modul tambahan. Caranya:

```bash
doas nano /etc/apache/httpd.conf
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
doas sv restart apache
doas sv restart nginx
```

### MariaDB

```bash
doas nano /etc/php/php.ini
```

Hapus tanda pagar `#extension=mysqli` Menjadi `extension=mysqli`.

`ctrl+x`. Save, Yes.

### PhpMyAdmin

```bash
doas nano /etc/apache/extra/phpmyadmin.conf
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
doas nano /etc/apache/httpd.conf
```

Tambahkan teks berikut ini di akhir baris.

```bash
#... phpMyAdmin configuration
Include /etc/apache/extra/phpmyadmin.conf
```

`ctrl+x`. Save, Yes.
