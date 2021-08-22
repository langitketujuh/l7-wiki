# EarlyOOM Anti Hang

## Fungsi layanan

EarlyOOM berfungsi untuk menghentikan paksa proses yang memungkinkan membuat hang komputer. Jika sisa memori bebas sekitar 10% maka aplikasi yang sengaja membuat memori penuh akan tereliminasi secara otomatis.
Secara bawaan layanan EarlyOOM sudah aktf.

Manfaat lainnya untuk menghindari mematikan mesin secara paksa ketika PC/Laptop tidak merespon/_hang_. Hal ini juga untuk menghindari bad sector SSD/HDD.

## Memasang earlyoom daemon

```bash
sudo xbps-install earlyoom
```

## Melihat status earlyoom

```bash
sudo sv status earlyoom
```

## Mengaktifkan earlyoom

Secara bawaan earlyoom sudah aktif

```bash
sudo ln -s /etc/sv/earlyoom /var/service/
```

## Menonaktifkan earlyoom

```bash
sudo rm /var/service/earlyoom
```

## Menjalankan ulang earlyoom

```bash
sudo sv restart earlyoom
```

## Menghapus earlyoom daemon

```bash
sudo xbps-remove -R earlyoom
```
