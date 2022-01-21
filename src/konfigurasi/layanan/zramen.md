# Zramen Pengatur ZRAM

Zramen untuk pengatur ZRAM. ZRAM sendiri untuk menambahkan swap di memori fisik secara terkompresi. Dengan ZRAM akan menambah memori 25% dari memori fisik.
Secara bawaan layanan `zramen` sudah aktf.

Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Memasang zramen daemon

```bash
doas xbps-install zramen
```

## Melihat status zramen

```bash
doas sv status zramen
```

## Mengaktifkan zramen

Secara bawaan zramen sudah aktif

```bash
doas ln -s /etc/sv/zramen /var/service/
```

## Menonaktifkan zramen

```bash
doas rm /var/service/zramen
```

## Menjalankan ulang zramen

```bash
doas sv restart zramen
```

## Menghapus zramen daemon

```bash
doas xbps-remove -R zramen
```
