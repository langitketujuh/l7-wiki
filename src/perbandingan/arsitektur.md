# Arsitektur

Pada dasarnya glibc merupakan libc yang paling umum dan paling kompatible, sehingga disarankan untuk memilih glibc. Namun jika tidak ketergantungan dengan aplikasi nonfree maka sebaiknya menggunakan musl.

LangitKetujuh saat ini menyediakan 3 jenis arsitektur, antara lain:

- `x86_64-musl`, sebagai arsitektur `64bit` dengan dukungan musl.
- `x86_64`, sebagai arsitektur `64bit` dengan dukungan glibc.
- `i686`, sebagai arsitektur `32bit` dengan dukungan glibc.

Secara ringkas perbedaannya adalah sebagai berikut.

| Fitur                                          | x86_64-musl | x86_64 | i686  |
| :--------------------------------------------- | :---------: | :----: | :---: |
| Dukungan Aplikasi Appimage _[^1]_              |      -      | **√**  | **√** |
| Dukungan Aplikasi dan Driver Proprietary _[^2]_ |      -      | **√**  | **√** |
| Dukungan Wine windows _[^3]_                   |    **√**    | **√**  | **√** |

*Catatan:*

[^1] Tergantung dari penyedia aplikasinya, tidak semua aplikasi AppImage menyediakan versi arsitektur `i686` (32bit). Umumnya hanya mendukung `x86_64` (64bit) saja.

[^2] Aplikasi tidak bebas (Nonfree) seperti driver gpu Nvidia, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley tidak mendukung di arsitektur `x86_64-musl` dan hanya tersedia di versi `x86_64` saja. Namun di `x86_64-musl` aplikasi tidak bebas tersebut masih bisa dipasang melalui [Flatpak](../konfigurasi/paket/flatpak.md).

[^3] `x86_64-musl` hanya mendukung wine windows 64bit dan `i686` hanya mendukung 32bit. Sedangkan `x86_64` mendukung keduanya (32bit dan 64bit).
