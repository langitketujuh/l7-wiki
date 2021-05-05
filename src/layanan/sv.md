# Pengaturan Layanan

## Fungsi layanan

`sv` merupakan salah satu manajemen init dari `runit` untuk pengganti Systemd. Tujuan `sv` untuk mengontrol layanan seperti melihat satus, mengaktifkan, menghapus, memberhentikan dan menyalakan ulang.

Sedangkan `vsv` hampir sama dengan `sv` namun lebih sederhana.

## Daftar semua layanan

```shell
sudo sv status /var/service/*
```

Atau

```shell
sudo vsv
```

## Daftar layanan yang tersedia

```shell
ls /etc/sv/* -lah
```

Semua layanan tersedia didalam direktori `/etc/sv/`.

## Status layanan

```shell
sudo sv status <service>
```

Contoh:
```shell
sudo sv status NetwrkManager
```

## Mengaktifkan layanan

```shell
sudo ln -s /etc/sv/<layanan> /var/service/
```

Contoh:
```shell
sudo ln -s /etc/sv/dbus /var/service/
```

## Menonaktifkan layanan

```shell
sudo rm /var/service/<layanan>
```

Contoh:
```shell
sudo rm /var/service/tlp
```
