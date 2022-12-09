# Clight

Clight untuk mengatur kecerahan layar secara otomatis menggunakan sensor webcam.

Biasanya laptop dengan baterai yang _drop_ dan webcam yang tidak terlalu bagus akan mempengaruhi kinerja `clight`. Jika bermasalah, fitur ini bisa dinonaktifkan.


## Cara memasang

    ```sh
    get Clight Clightd
    ```
## Penggunaan

- Melihat status clightd

    ```sh
    doas rsv status Clightd
    ```

- Mengaktifkan clightd

    Secara bawaan clightd sudah aktif

    ```sh
    doas rsv enable Clightd
    ```

- Menonaktifkan clightd

    ```sh
    doas rsv disable Clightd
    ```

- Menjalankan ulang clightd

    ```sh
    doas rsv restart Clightd
    ```

- Menghapus clight dan clight daemon

    ```sh
    remove Clight Clightd
    ```
