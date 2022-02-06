# ZRAMEN

ZRAMEN untuk pengatur [zram](../../pemasangan/sistem-swap/zram.md), secara bawaan layanan `zramen` sudah aktf. Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Memasang zramen daemon

```sh
doas xbps-install zramen
```

## Melihat status zramen

```sh
doas sv status zramen
```

## Mengaktifkan zramen

Secara bawaan zramen sudah aktif

```sh
doas ln -s /etc/sv/zramen /var/service/
```

## Menonaktifkan zramen

```sh
doas rm /var/service/zramen
```

## Menjalankan ulang zramen

```sh
doas sv restart zramen
```

## Menghapus zramen daemon

```sh
doas xbps-remove -R zramen
```
