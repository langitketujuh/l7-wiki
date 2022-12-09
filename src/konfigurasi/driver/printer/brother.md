# Brother

## Printer

Pasang Driver printer brother.

```
get brother-brlaser
```

<details>
  <summary><i>Lihat daftar driver Brother</i></summary>

    - Brother DCP-1510 series
    - Brother DCP-1600 series
    - Brother DCP-7030
    - Brother DCP-7040
    - Brother DCP-7055
    - Brother DCP-7055W
    - Brother DCP-7060D
    - Brother DCP-7065DN
    - Brother DCP-7080
    - Brother DCP-L2500D series
    - Brother DCP-L2520D series
    - Brother DCP-L2520DW series
    - Brother DCP-L2540DW series
    - Brother HL-1110 series
    - Brother HL-1200 series
    - Brother HL-2030 series
    - Brother HL-2140 series
    - Brother HL-2220 series
    - Brother HL-2270DW series
    - Brother HL-5030 series
    - Brother HL-L2300D series
    - Brother HL-L2320D series
    - Brother HL-L2340D series
    - Brother HL-L2360D series
    - Brother HL-L2375DW series
    - Brother HL-L2390DW
    - Brother MFC-1910W
    - Brother MFC-7240
    - Brother MFC-7360N
    - Brother MFC-7365DN
    - Brother MFC-7420
    - Brother MFC-7460DN
    - Brother MFC-7840W
    - Brother MFC-L2710DW series
    - Lenovo M7605D

</details>

Jika tipe printer tidak tersedia, kemungkinan tersedia dengan driver [Open Printing].

Langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.

## Scanner

Beberapa driver dibawah ini hanya tersedia di glibc saja dan membutuhkan repo tambahan [nonfree]. Sebab beberapa driver Brother merupakan perangkat lunak proprietary (tidak terbuka).

```
get void-repo-nonfree
```

Selanjutnya pasang driver Brother printer/scanner.

| Perintah                          | Deskripsi                                                    |
| :-------------------------------- | :----------------------------------------------------------- |
| `get brother-brscan3`             | SANE scanner driver for brscan3-compatible Brother scanners  |
| `get brother-brscan4`             | SANE scanner driver for brscan4-compatible printers          |
| `get brother-dcp197c-cupswrapper` | CUPS wrapper driver for the brother DCP-197C printer/scanner |
| `get brother-dcp197c-lpr`         | LPR driver for the brother DCP-197C printer/scanner          |

[Open Printing]:open-printing.md
[nonfree]:../../server.html#repo-tambahan
