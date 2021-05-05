# TLP Power Manajemen

## Fungsi layanan

TLP Mengatur power management agar penggunaan baterai laptop lebih efisien. Secara bawaan sudah aktif.

## Memasang TLP daemon

```shell
get tlp tlp-rdw
```

## Melihat status tlp

```shell
sudo sv status tlp
```

## Mengaktifkan tlp

Secara bawaan tlp sudah aktif

```shell
sudo ln -s /etc/sv/tlp /var/service/
```

## Menonaktifkan tlp

```shell
sudo rm /var/service/tlp
```

## Menjalankan ulang tlp

```shell
sudo sv restart tlp
```

## Menghapus TLP daemon

```shell
remove tlp tlp-rdw
```
