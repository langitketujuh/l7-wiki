# EarlyOOM

## Deskripsi

EarlyOOM (Early Out of Memory) berfungsi untuk menghentikan paksa perangkat lunak dengan proses memori yang tinggi dan memungkinkan untuk membuat hang komputer. Jika sisa memori yang bebas sekitar 10% maka perangkat lunak yang sengaja membuat memori penuh akan tereliminasi secara otomatis. Secara bawaan layanan EarlyOOM sudah aktf.

Manfaat lainnya untuk menghindari mematikan mesin secara paksa ketika komputer tidak merespon/_hang_. Hal ini juga untuk menghindari bad sector SSD/HDD.

## Cara memasang

```
get earlyoom
```

## Penggunaan

- Melihat status earlyoom

    ```
    doas rsv status earlyoom
    ```

- Mengaktifkan earlyoom

    Secara bawaan earlyoom sudah aktif

    ```
    doas rsv enable earlyoom
    ```

- Menonaktifkan earlyoom

    ```
    doas rsv disable earlyoom
    ```

- Menjalankan ulang earlyoom

    ```
    doas rsv restart earlyoom
    ```

## Menghapus earlyoom daemon

```
remove earlyoom
```
