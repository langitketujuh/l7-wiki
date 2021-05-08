# Kecerahan Otomatis dengan Clight

## Fungsi layanan

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam. Secara bawaan sudah aktif.

Biasanya baterai yang ngedrop dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah fitur ini bisa dinonaktifkan saja.

## Memasang clight dan clight daemon

```bash
get Clight Clightd
```

## Melihat status clightd

```bash
sudo sv status Clightd
```

## Mengaktifkan clightd

Secara bawaan Clightd sudah aktif

```bash
sudo ln -s /etc/sv/Clightd /var/service/
```

## Menonaktifkan clightd

```bash
sudo rm /var/service/Clightd
```

## Menjalankan ulang clightd

```bash
sudo sv restart Clightd
```

## Menghapus clight dan clight daemon

```bash
remove Clight Clightd
```