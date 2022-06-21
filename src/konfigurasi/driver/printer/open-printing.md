# Open Printing

Secara bawaan openprinting foomatic sudah terpasang secara otomatis kecuali `foomatic-db-nonfree`.

Untuk memasangnya memerlukan repositori [nonfree]. Sebab `foomatic-db-nonfree` merupakan perangkat lunak proprietary (tidak terbuka).

```sh
get void-repo-nonfree
```

```sh
get -S foomatic-db-nonfree
```

Langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.

[nonfree]:../../server.html#repo-tambahan
