# Brother Printer

Pasang Driver printer brother.

```sh
get brother-brlaser
```

Beberapa driver dibawah ini hanya tersedia di glibc saja dan membutuhkan repo tambahan [nonfree]. Sebab beberapa driver Brother merupakan perangkat lunak proprietary (tidak terbuka).

```sh
get void-repo-nonfree
```

Selanjutnya pasang driver Brother printer/scanner.

| Perintah                          | Deskripsi                                                    |
| :-------------------------------- | :----------------------------------------------------------- |
| `get brother-brscan3`             | SANE scanner driver for brscan3-compatible Brother scanners  |
| `get brother-brscan4`             | SANE scanner driver for brscan4-compatible printers          |
| `get brother-dcp197c-cupswrapper` | CUPS wrapper driver for the brother DCP-197C printer/scanner |
| `get brother-dcp197c-lpr`         | LPR driver for the brother DCP-197C printer/scanner          |

Langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.

[nonfree]:../../server.html#repo-tambahan
