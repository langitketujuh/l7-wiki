# EarlyOOM

EarlyOOM (Early Out of Memory) berfungsi untuk menghentikan paksa perangkat lunak dengan proses memori yang tinggi dan memungkinkan untuk membuat hang komputer. Jika sisa memori yang bebas sekitar 10% maka perangkat lunak yang sengaja membuat memori penuh akan tereliminasi secara otomatis. Secara bawaan layanan EarlyOOM sudah aktf.

Manfaat lainnya untuk menghindari mematikan mesin secara paksa ketika komputer tidak merespon/_hang_. Hal ini juga untuk menghindari bad sector SSD/HDD.

## Cara memasang

```sh
get earlyoom
```

## Penggunaan

- Melihat status earlyoom

    ```sh
    doas rsv status earlyoom
    ```

- Mengaktifkan earlyoom

    Secara bawaan earlyoom sudah aktif

    ```sh
    doas rsv enable earlyoom
    ```

- Menonaktifkan earlyoom

    ```sh
    doas rsv disable earlyoom
    ```

- Menjalankan ulang earlyoom

    ```sh
    doas rsv restart earlyoom
    ```

## Menghapus earlyoom daemon

```sh
remove earlyoom
```
