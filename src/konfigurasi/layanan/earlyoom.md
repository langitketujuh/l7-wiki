# EarlyOOM

EarlyOOM (Early Out of Memory) berfungsi untuk menghentikan paksa perangkat lunak dengan proses memori yang tinggi dan memungkinkan untuk membuat hang komputer. Jika sisa memori yang bebas sekitar 10% maka perangkat lunak yang sengaja membuat memori penuh akan tereliminasi secara otomatis. Secara bawaan layanan EarlyOOM sudah aktf.

Manfaat lainnya untuk menghindari mematikan mesin secara paksa ketika komputer tidak merespon/_hang_. Hal ini juga untuk menghindari bad sector SSD/HDD.

## Cara memasang

```sh
doas xbps-install earlyoom
```

## Melihat status earlyoom

```sh
doas sv status earlyoom
```

## Mengaktifkan earlyoom

Secara bawaan earlyoom sudah aktif

```sh
doas ln -s /etc/sv/earlyoom /var/service/
```

## Menonaktifkan earlyoom

```sh
doas rm /var/service/earlyoom
```

## Menjalankan ulang earlyoom

```sh
doas sv restart earlyoom
```

## Menghapus earlyoom daemon

```sh
doas xbps-remove -R earlyoom
```
