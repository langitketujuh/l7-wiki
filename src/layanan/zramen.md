# Zramen Pengatur ZRAM

## Fungsi layanan

Zramen untuk pengatur ZRAM. ZRAM sendiri untuk menambahkan swap di meori fisik secara terkompresi. Dengan ZRAM akan menambah memori 25% dari memori fisik.
Secara bawaan layanan `zramen` sudah aktf.

Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Memasang zramen daemon

```bash
get zramen
```

## Melihat status zramen

```bash
sudo sv status zramen
```

## Mengaktifkan zramen

Secara bawaan zramen sudah aktif

```bash
sudo ln -s /etc/sv/zramen /var/service/
```

## Menonaktifkan zramen

```bash
sudo rm /var/service/zramen
```

## Menjalankan ulang zramen

```bash
sudo sv restart zramen
```

## Menghapus zramen daemon

```bash
remove zramen
```
