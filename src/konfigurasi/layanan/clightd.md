# Clight

## Deskripsi

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam.

Biasanya laptop dengan baterai yang _drop_ dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah, fitur ini bisa dinonaktifkan.


## Cara memasang

    ```
    get Clight Clightd
    ```
## Penggunaan

- Melihat status clightd

    ```
    doas rsv status Clightd
    ```

- Mengaktifkan clightd

    Secara bawaan clightd sudah aktif

    ```
    doas rsv enable Clightd
    ```

- Menonaktifkan clightd

    ```
    doas rsv disable Clightd
    ```

- Menjalankan ulang clightd

    ```
    doas rsv restart Clightd
    ```

- Menghapus clight dan clight daemon

    ```
    remove Clight Clightd
    ```
