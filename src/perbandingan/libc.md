# Pustaka C

## Glibc (GNU libc)

Jenis libc ini khusus untuk arsitektur `x64_86` dan `i686`. Glibc merupakan pustaka C yang hampir digunakan oleh semua perangkat lunak. Glibc memiliki kompatibilitas yang jauh lebih banyak dan memiliki dukungan multilib sehingga dapat menjalankan perangkat lunak 32bit. Glibc cukup membengkak dalam segi ukuran dan memiliki banyak hal yang tidak digunakan lagi bahkan sudah cukup usang, tetapi memiliki dukungan multilib dan semua yang telah dibangun untuk linux mendukung Glibc.

Glibc sifatnya membengkak tetapi semua orang menggunakannya dan memiliki dukungan untuk semuanya. Glibc direkomendasikan untuk pengguna yang memerlukan perangkat lunak tidak terbuka seperti driver GPU Nvidia, Chrome, Spotify, Steam, Skype, Printer Canon, Pycharm, Mendeley, Zoom, Teams, dan perangkat lunak tidak terbuka lainnya. Namun Glibc sedikit lebih lambat dan bloat dari Musl libc.

## Musl libc

Jenis libc untuk arsitektur `x64_86-musl`. Berbeda dengan Glibc, Musl libc mencoba untuk menjadi kebalikan Glibc. Menghapus semua yang tidak diperlukan dan menggunakan kode assembler untuk mencoba menjadi lebih cepat dalam tugas-tugas tertentu. Musl tidak memiliki multilib (untuk dukungan 32bit) dan tidak memiliki dukungan hebat seperti Glibc, tetapi ia memiliki footprint dan penggunaan sumber daya yang sangat minimalis.

Musl keren dan heboh, tetapi tidak begitu banyak orang yang menggunakannya dan tidak memiliki banyak dukungan. Namun ia menggunakan sumber daya yang amat kecil. Kami merekomendasikan menggunakan Musl jika tidak ada kebutuhan perangkat lunak tidak terbuka (proprietary).

Musl direkomendasikan untuk pengguna yang memburu performa dan efisiensi. Render video, animasi, kompil, multitasking, akan terasa perbedaannya. Perangkat lunak tidak bebas seperti Zoom, Teams, dan sebagainya bisa dipasang melalui flatpak namun terbatas. Beberapa perangkat lunak yang memerlukan `wine-32bit` tidak dapat dijalankan dengan semestinya.

## Mengetahui jenis libc

Pengguna dapat mengetahui jenis libc yang digunakan dengan perintah ini.

```
ldd --version
```

Hasil keluaran akan menampilkan GNU Libc atau Musl libc.
