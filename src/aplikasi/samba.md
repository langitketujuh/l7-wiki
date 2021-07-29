# Samba

## Pengertian

Samba merupakan aplikasi cli untuk berbagi direktori dengan pengguna windows.

## Memasang samba

```
sudo xbps-install samba
```

## Mengaktifkan layanan samba

```
sudo ln -s /etc/sv/smbd /var/service
sudo ln -s /etc/sv/nmbd /var/service
```

Cek layanan tersebut sudah berjalan atau tidaknya.

```
sudo vsv status mbd
```

## Nama Pengguna, Grup dan Tempat berbagi

Pada panduan ini akan membuat pengguna dan grup baru khusus samba. Sebagai contoh `userberbagi` dan `grupberbagi`.

* `userberbagi` sebagai pengguna samba (bisa diganti dengan nama pengguna saat ini)
* `grupberbagi` sebagai grup samba.
* `/media/berbagi` sebagai tempat direktori untuk berbagi.

## Pengaturan pengguna berbagi

Menambahkan pengguna baru.

```
sudo useradd --system userberbagi
```

## Pengaturan grup berbagi

Tujuannya untuk memasukkan `userberbagi` kedalam kelompok `grupberbagi`.

```
sudo groupadd grupberbagi
sudo usermod -aG grupberbagi userberbagi
```

## Pengaturan direktori tempat berbagi

Membuat direktori untuk tempat berbagi.

```
sudo mkdir /media/berbagi
```

Memberikan izin pengguna untuk mengakses direktori berbagi.

```
sudo chown -R userberbagi /media/berbagi
```

Sebagai pilihan saja, jika berkas baru yang dibuat menjadi milik dari spesifik grup.

```
sudo chgrp -R grupberbagi /media/berbagi
sudo chmod g+s /media/berbagi
```

## Pengaturan `samba.conf`

Buka berkas di `/etc/samba/smb.conf`. Ada 3 jenis yang bisa diatur sesuai kebutuhan. Kemudian tambahkan baris berikut.

### 1. Semua pengguna bisa mengakses dan menulis di direktori `berbagi`

Tambahkan ke `/etc/samba/smb.conf` di akhir dokumen.

```
[berbagi]
  path = /media/berbagi
  writeable = yes
  browseable = yes
  public = yes
  create mask = 0644
  directory mask = 0755
  force user = userberbagi
```

### 2. Hanya pengguna linux yang terdaftar di grup yang bisa mengakses direktori `berbagi`

Tambahkan ke `/etc/samba/smb.conf` di akhir dokumen.

```
# share
[berbagi]
  path = /media/berbagi
  valid users = @grupberbagi
  writeable = yes
  browseable = yes
  create mask = 0644
  directory mask = 0755
  force user = userberbagi
```

### 3. Hanya spesifik pengguna saja yang bisa mengakses direktori `berbagi`. Dalam artian pengguna `userberbagi` saja yang bisa mengaksesnya.

Jalankan perintah ini untuk menambahkan pengguna samba.

```
sudo smbpasswd -a userberbagi
```

Tambahkan ke `/etc/samba/smb.conf` di akhir dokumen.

```
# share
[share]
  path = /media/share
  valid users = shareuser
  writeable = yes
  browseable = yes
  create mask = 0644
  directory mask = 0755
  force user = shareuser
```

## Menyalakan ulang layanan samba untuk memperbarui pengaturan.

```
sudo vsv restart smbd nmbd
```