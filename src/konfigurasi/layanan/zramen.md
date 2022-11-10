# ZRAMEN

ZRAMEN untuk pengatur [zram](../../pemasangan/sistem-swap/zram.md), secara bawaan layanan `zramen` sudah aktf. Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Cara memasang

```sh
get zramen
```

## Melihat status zramen

```sh
rsv status zramen
```

## Mengaktifkan zramen

Secara bawaan zramen sudah aktif

```sh
rsv enable zramen
```

## Menonaktifkan zramen

```sh
rsv disable zramen
```

## Menjalankan ulang zramen

```sh
rsv restart zramen
```

## Menghapus zramen daemon

```sh
remove zramen
```
