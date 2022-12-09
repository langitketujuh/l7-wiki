# TLP

TLP sebagai manajemen baterai laptop agar penggunaannya lebih hemat dan efisien. Pengguna tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_.

## Cara memasang

```sh
get tlp tlp-rdw
```

## Penggunaan

- Melihat status tlp

    ```sh
    doas rsv status tlp
    ```

- Mengaktifkan tlp

    Secara bawaan tlp sudah aktif

    ```sh
    doas rsv enable tlp
    ```

- Menonaktifkan tlp

    ```sh
    doas rsv disable tlp
    ```

- Menjalankan ulang tlp

    ```sh
    doas rsv restart tlp
    ```

## Menghapus tlp daemon

```sh
remove tlp tlp-rdw
```
