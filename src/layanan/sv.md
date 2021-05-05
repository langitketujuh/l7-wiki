# Pengaturan Layanan

## Fungsi layanan

`sv` merupakan salah satu manajemen init dari `runit` untuk pengganti Systemd. Tujuan `sv` untuk mengontrol layanan seperti melihat satus, mengaktifkan, menghapus, memberhentikan dan menyalakan ulang.

Sedangkan `vsv` hampir sama dengan `sv` namun lebih sederhana.

## Daftar semua layanan

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
