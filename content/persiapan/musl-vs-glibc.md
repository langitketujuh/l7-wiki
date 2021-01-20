---
title: Musl Vs Glibc
weight: 3
---

Glibc memiliki kompatibilitas yang jauh lebih banyak dan memiliki dukungan multilib (32bit). Sedangkan Musl cukup efisien dan keren.

Glibc cukup membengkak dalam segi ukuran dan memiliki banyak hal yang tidak digunakan lagi bahkan sudah cukup usang, tetapi memiliki dukungan multilib dan semua yang telah dibangun untuk linux mendukung glibc.

Musl sebaliknya, mencoba untuk menjadi kebalikannya. Menghapus semua yang tidak diperlukan dan menggunakan kode assembler untuk mencoba menjadi lebih cepat dalam tugas-tugas tertentu. Musl tidak memiliki multilib (dukungan 32-bit) dan tidak memiliki dukungan hebat seperti Glibc, tetapi ia memiliki footprint dan penggunaan sumber daya yang sangat minimalis. Musl bagus untuk orang yang memburu performa dan efisiensi. Render video, animasi, kompil, multitasking, akan terasa perbedaannya.

### Kesimpulan

**Glibc** Sifatnya membengkak tetapi semua orang menggunakannya dan memiliki dukungan untuk semuanya.

**Musl** Keren dan heboh, tetapi tidak begitu banyak orang yang menggunakannya dan tidak memiliki banyak dukungan. Namun ia menggunakan sumber daya yang amat kecil. Kami merekomendasikan menggunakan Musl jika tidak ada kebutuhan aplikasi pihak ketiga.
