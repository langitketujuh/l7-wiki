# Pengaturan Layanan

## Fungsi layanan

`sv` merupakan salah satu manajemen init dari `runit` untuk pengganti Systemd. Tujuan `sv` untuk mengontrol layanan seperti melihat satus, mengaktifkan, menghapus, memberhentikan dan menyalakan ulang.

Sedangkan `vsv` memiliki fungsi yang sama dengan `sv` namun lebih mudah dan sederhana.

## Daftar layanan yang aktif

```bash
sudo sv status /var/service/*
```

Atau

```bash
sudo vsv
```

## Daftar layanan yang tersedia

```bash
ls /etc/sv/* -lah
```

Semua layanan tersedia didalam direktori `/etc/sv/`.

## Status layanan

```bash
sudo sv status <service>
```

Contoh:
```bash
sudo sv status NetwrkManager
```

## Mengaktifkan layanan

```bash
sudo ln -s /etc/sv/<layanan> /var/service/
```

Contoh:
```bash
sudo ln -s /etc/sv/dbus /var/service/
```

## Menonaktifkan layanan

```bash
sudo rm /var/service/<layanan>
```

Contoh:
```bash
sudo rm /var/service/tlp
```
