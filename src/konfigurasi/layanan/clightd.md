# Kecerahan Otomatis dengan Clight

## Fungsi layanan

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam.

Biasanya laptop dengan baterai yang _drop_ dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah, fitur ini bisa dinonaktifkan.

## Memasang clight dan clight daemon

```bash
doas xbps-install Clight Clightd
```

## Melihat status clightd

```bash
doas sv status Clightd
```

## Mengaktifkan clightd

Secara bawaan Clightd sudah aktif

```bash
doas ln -s /etc/sv/Clightd /var/service/
```

## Menonaktifkan clightd

```bash
doas rm /var/service/Clightd
```

## Menjalankan ulang clightd

```bash
doas sv restart Clightd
```

## Menghapus clight dan clight daemon

```bash
doas xbps-remove -R Clight Clightd
```
