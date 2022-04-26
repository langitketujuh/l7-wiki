# Pembaruan sistem

## Rilis bergulir

Sistem operasi LangitKetujuh menggunakan rilis bergulir (rolling release) untuk memperbarui setiap paket, sehingga perangkat lunak yang digunakan relatif terbaru dan lebih sering update. Meskipun demikian, ukuran dependensi lebih kecil dari pada distro pada umumnya.

## Upgrade system

Sebelum memperbarui sistem pastikan sudah terhubung dengan jaringan internet. Kemudian perbarui sistem dengan cara mengklik **Upgrade system** di menu favorit seperti dibawah ini.

![Upgrade system LangitKetujuh OS](../media/image/update-system-langitketujuh-id.webp)

Ada 5 tahapan yang dilakukan oleh Upgrade system.

1. `Synchronization`, untuk sinkronisasi basis data yang terbaru dari server repositori.
2. `Full system upgrade`, proses mengunduh dan memasang dependensi yang terbaru. Ketik `y` untuk mengeksekusi.
3. `Check trouble and patch`, proses ini akan memeriksa jika ada yang bermasalah di grub, screen tearing intel, memeriksa sistem operasi dual boot dan lain sebagainya.
4. `Update hosts adblocker?`, proses ini akan memperbarui database blokir iklan melalui `/etc/hosts`.
5. `Remove all old kernels?`, proses untuk menghapus kernel versi lama yang tidak digunakan. `Do you want to continue?` pilih `y` untuk memproses. Secara bawaan memilih `n` untuk tidak memproses.
6. `Remove obsolete and orphans packages?`proses untuk menghapus dependensi kedaluwarsa yang tidak digunakan. `Do you want to continue?` pilih `y` untuk memproses. Secara bawaan memilih `n` untuk tidak memproses.

Pembaruan dapat dilakukan saat memiliki waktu senggang saja, atau ketika ingin menggunakan perangkat lunak versi terbaru.
