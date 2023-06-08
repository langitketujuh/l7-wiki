# OpenDoas alternatif sudo

## Deskripsi

OpenDoas (lebih dikenal dengan doas) merupakan porting `doas` dari OpenBSD yang digunakan sebagai alternatif sudo. 95% kode sumber dasar, berfungsi selayaknya sudo. Dengan doas pengeksekusi perintah di sistem bisa lebih cepat dan sederhana.

Di dalam paket `l7-opendoas` terdapat konfigurasi tambahan yang siap pakai (/etc/doas.conf). Manfaat doas tentunya untuk melewati kata sandi dan mempercepat alur kerja xbps seperti memperbarui, mengkonfigurasi, memasang dan menghapus perangkat lunak. Kini kami menggunakan doas sebagai alternatif sudo.
