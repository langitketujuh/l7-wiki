# Clight

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam.

Biasanya laptop dengan baterai yang _drop_ dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah, fitur ini bisa dinonaktifkan.

## Cara memasang

```sh
doas xbps-install Clight Clightd
```

## Melihat status clightd

```sh
doas sv status Clightd
```

## Mengaktifkan clightd

Secara bawaan clightd sudah aktif

```sh
doas ln -s /etc/sv/Clightd /var/service/
```

## Menonaktifkan clightd

```sh
doas rm /var/service/Clightd
```

## Menjalankan ulang clightd

```sh
doas sv restart Clightd
```

## Menghapus clight dan clight daemon

```sh
doas xbps-remove -R Clight Clightd
```
