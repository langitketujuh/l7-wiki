# Arsitektur mesin

Pada dasarnya glibc merupakan libc yang paling umum dan paling kompatibel, sehingga disarankan untuk memilih glibc. Namun jika tidak ketergantungan dengan perangkat lunak tidak bebas maka sebaiknya menggunakan musl.

LangitKetujuh saat ini menyediakan 2 jenis arsitektur, antara lain:

- `x86_64-musl`, sebagai arsitektur `64bit` dengan dukungan musl.
- `x86_64`, sebagai arsitektur `64bit` dengan dukungan glibc.

Secara ringkas perbedaannya adalah sebagai berikut.

| Fitur                                                  | x86_64-musl | x86_64 |
| :----------------------------------------------------- | :---------: | :----: |
| Dukungan Perangkat lunak Appimage                      |      -      | **√**  |
| Dukungan Perangkat lunak dan Driver Proprietary _[^1]_ |      -      | **√**  |
| Dukungan Wine windows _[^2]_                           |    **√**    | **√**  |

*Catatan:*

[^1] Perangkat lunak tidak terbuka seperti driver gpu Nvidia, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley tidak mendukung di arsitektur `x86_64-musl` dan hanya tersedia di versi `x86_64` saja. Namun di `x86_64-musl` perangkat lunak tidak terbuka tersebut masih bisa dipasang melalui [Flatpak](../konfigurasi/paket/flatpak.md).

[^2] `x86_64-musl` hanya mendukung wine windows 64bit. Sedangkan `x86_64` mendukung aplikasi windows 32bit dan 64bit.
