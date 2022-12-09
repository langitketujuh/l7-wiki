# ZRAMEN

ZRAMEN untuk pengatur [zram](../../pemasangan/sistem-swap/zram.md), secara bawaan layanan `zramen` sudah aktf. Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Cara memasang

```
get zramen
```

## Penggunaan

- Melihat status zramen

    ```
    doas rsv status zramen
    ```

- Mengaktifkan zramen

    Secara bawaan zramen sudah aktif

    ```
    doas rsv enable zramen
    ```

- Menonaktifkan zramen

    ```
    doas rsv disable zramen
    ```

- Menjalankan ulang zramen

    ```
    doas rsv restart zramen
    ```

## Menghapus zramen daemon

```
remove zramen
```
