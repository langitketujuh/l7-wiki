# Runit init

Init merupakan daemon proses yang terus berjalan hingga sistem dimatikan. Sedangkan [Runit](http://smarden.org/runit/) sendiri merupakan salah satu manajemen init pengganti [systemd](https://systemd.io/). Proses booting runit terlihat saat pertama kali menyalakan komputer.

![Runit LangitKetujuh OS](../../media/image/runit-langitketujuh-id.webp)

Runit menggunakan perkakas `sv` untuk mengontrol layanan. Seperti melihat status, mengaktifkan, menghapus, menghentikan dan menyalakan ulang layanan.

Tetapi kami sarankan menggunakan [rsv] untuk mengontrol setiap layanan yang ada di sistem.

## Cara memasang

Buka konsole lalu jalankan perintah berikut.

```
get rsv
```

## Penggunaan `rsv`

- Status layanan

    ```sh
    rsv list
    ```

    Layanan aktif.

    ```sh
    rsv list --enabled
    ```

- Mengaktifkan layanan

    ```sh
    rsv enable <layanan>
    ```

- Menonaktifkan layanan

    ```sh
    rsv disable <layanan>
    ```

- Memulai layanan

    ```sh
    rsv start <layanan>
    ```

- Menghentikan layanan

    ```sh
    rsv stop <layanan>
    ```

- Status layanan

    ```sh
    rsv status <layanan>
    ```

## Bantuan

Selengkapnya tentang [rsv].

```sh
rsv help
```

[rsv]:https://github.com/JojiiOfficial/rsv
