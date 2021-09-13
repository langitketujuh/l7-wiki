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

**Fitur** | **x86_64-musl** | **x86_64** | **i686**
:--- | :---: | :---: | :---:
Arsitektur 64-bit. | **√** | **√** | -
Dukungan Aplikasi Appimage. | - | **√** | **√**
Dukungan Aplikasi Nonfree.  | - | **√** | **√**
Dukungan Wine windows. | 64bit[^1] | **√** | 32bit[^2]

- [^1] x64_86-musl hanya mendukung wine 64 bit.
- [^2] i686 hanya mendukung wine 32 bit.
