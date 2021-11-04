# Musl vs GLibc

## Glibc (x64_86 dan i686)

Glibc (GNU libc) merupakan C library yang hampir digunakan oleh semua perangkat lunak. Glibc memiliki kompatibilitas yang jauh lebih banyak dan memiliki dukungan multilib sehingga dapat menjalankan aplikasi 32-bit. Glibc cukup membengkak dalam segi ukuran dan memiliki banyak hal yang tidak digunakan lagi bahkan sudah cukup usang, tetapi memiliki dukungan multilib dan semua yang telah dibangun untuk linux mendukung glibc.

Glibc sifatnya membengkak tetapi semua orang menggunakannya dan memiliki dukungan untuk semuanya.

> **Rekomendasi**
>
> Glibc direkomendasikan untuk Anda yang memerlukan aplikasi Nonfree seperti driver GPU Nvidia, Chrome, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley, Zoom, Teams, aplkasi windows dan aplikasi tidak bebas lainnya (nonfree software). Namun Glibc sedikit lebih lambat dan bloat dari Musl.

## Musl (x64_86-musl)

Sedangkan Musl libc mencoba untuk menjadi kebalikan Glibc. Menghapus semua yang tidak diperlukan dan menggunakan kode assembler untuk mencoba menjadi lebih cepat dalam tugas-tugas tertentu. Musl tidak memiliki multilib (dukungan 32-bit) dan tidak memiliki dukungan hebat seperti Glibc, tetapi ia memiliki footprint dan penggunaan sumber daya yang sangat minimalis.

Musl keren dan heboh, tetapi tidak begitu banyak orang yang menggunakannya dan tidak memiliki banyak dukungan. Namun ia menggunakan sumber daya yang amat kecil. Kami merekomendasikan menggunakan Musl jika tidak ada kebutuhan aplikasi tidak bebas (nonfree/proprietary).

> **Rekomendasi**
>
> Musl direkomendasikan untuk Anda yang memburu performa dan efisiensi. Render video, animasi, kompil, multitasking, akan terasa perbedaannya. Aplikasi nonfree seperti Zoom, Teams, dan sebagainya bisa dipasang melalui flatpak namun terbatas. Beberapa aplikasi yang memerlukan `wine-32bit` tidak dapat dijalankan dengan semestinya.

## Memilih Libc

Pada dasarnya `glibc` merupakan libc yang paling umum dan paling kompatible, sehinga disarankan untuk memilih `glibc`. Namun jika tidak ketergantungan dengan aplikasi nonfree maka sebaiknya menggunakan `musl`.

Fitur | x86_64-musl | x86_64 | i686
:--- | :---: | :---: | :---:
Dukungan Aplikasi Appimage _[^1]_ | - | **√** | **√**
Dukungan Aplikasi dan Driver Propietary _[^2]_ | - | **√** | **√**
Dukungan Wine windows _[^3]_ | **√** | **√** | **√** |

*Catatan:*

[^1] Tergantung dari penyedia aplikasinya, tidak semua aplikasi AppImage menyediakan versi arsitektur 32bit (`i686`). Umumnya hanya mendukung 64bit (`x86_64`) saja.

[^2] Aplikasi tidak bebas (Nonfree) seperti driver gpu Nvidia, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley tidak mendukung di arsitektur `x86_64-musl` dan hanya tersedia di versi `x86_64` saja. Namun di `x86_64-musl` aplikasi tidak bebas tersebut masih bisa dipasang melalui [Flatpak](../aplikasi/flatpak.md).

[^3] `x86_64-musl` hanya mendukung wine windows 64bit dan `i686` hanya mendukung 32bit. Sedangkan `x86_64` mendukung keduanya (32bit dan 64bit).

