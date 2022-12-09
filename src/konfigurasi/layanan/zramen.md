# ZRAMEN

ZRAMEN untuk pengatur [zram](../../pemasangan/sistem-swap/zram.md), secara bawaan layanan `zramen` sudah aktf. Jika RAM fisik memiliki ukuran yang cukup besar, maka layanan `zramen` dinonaktifkan saja dan fokus di RAM fisik.

## Cara memasang

```sh
get zramen
```

## Penggunaan

- Melihat status zramen

    ```sh
    doas rsv status zramen
    ```

- Mengaktifkan zramen

    Secara bawaan zramen sudah aktif

    ```sh
    doas rsv enable zramen
    ```

- Menonaktifkan zramen

    ```sh
    doas rsv disable zramen
    ```

- Menjalankan ulang zramen

    ```sh
    doas rsv restart zramen
    ```

## Menghapus zramen daemon

```sh
remove zramen
```
