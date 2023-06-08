# TLP

## Deskripsi

TLP sebagai manajemen baterai laptop agar penggunaannya lebih hemat dan efisien. Pengguna tidak perlu mengkonfigurasi ulang, cukup pasang dan lupakan. TLP sendiri sudah menggunakan konfigurasi yang sudah diimplementasikan Powertop secara _out of the box_.

## Cara memasang

```
get tlp tlp-rdw
```

## Penggunaan

- Melihat status tlp

    ```
    doas rsv status tlp
    ```

- Mengaktifkan tlp

    Secara bawaan tlp sudah aktif

    ```
    doas rsv enable tlp
    ```

- Menonaktifkan tlp

    ```
    doas rsv disable tlp
    ```

- Menjalankan ulang tlp

    ```
    doas rsv restart tlp
    ```

## Menghapus tlp daemon

```
remove tlp tlp-rdw
```
