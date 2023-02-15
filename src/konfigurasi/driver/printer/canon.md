# Canon

## Printer

Driver Printer Canon hanya bisa dipasang untuk edisi glibc saja (i686 dan x86_64) karena proprietary. Serta membutuhkan repo tambahan [nonfree].

```
get void-repo-nonfree
```

Meskipun tersedia driver untuk linux, tidak semua tipe printer berhasil untuk mencetak. Canon hanya merilis driver linux beberapa tipe tertentu saja, tidak semua jenis tipe.

```
get cnijfilter2
```

Langkah selanjutnya konfigurasi printer di pengaturan sistem.

* Tancapkan kabel printer ke port USB.
* Buka menu `Printers`.
* Klik `Click here to add a new printer`.
* Muncul dialog password CUPS. Masukkan kata sandi root.
* Pilih jenis printer. Klik `Next`.
* Isikan Nama dan deskripsi, atau biarkan saja sesuai bawaannya. Kemudian klik `Finish`.

<details>
  <summary><i>Lihat daftar driver Canon</i></summary>

    - canone200
    - canone300
    - canone3100
    - canone4200
    - canone460
    - canone470
    - canone480
    - canong3000
    - canong3010
    - canong4000
    - canong4010
    - canonib4000
    - canonib4100
    - canonip110
    - canonmb2000
    - canonmb2100
    - canonmb2300
    - canonmb2700
    - canonmb5000
    - canonmb5100
    - canonmb5300
    - canonmb5400
    - canonmg2900
    - canonmg3000
    - canonmg3600
    - canonmg5600
    - canonmg5700
    - canonmg6600
    - canonmg6800
    - canonmg6900
    - canonmg7500
    - canonmg7700
    - canonmx490
    - canontr4500
    - canontr7500
    - canontr7530
    - canontr8500
    - canontr8530
    - canontr8580
    - canontr9530
    - canonts200
    - canonts300
    - canonts3100
    - canonts5000
    - canonts5100
    - canonts6000
    - canonts6100
    - canonts6130
    - canonts6180
    - canonts6200
    - canonts6230
    - canonts6280
    - canonts8000
    - canonts8100
    - canonts8130
    - canonts8180
    - canonts8200
    - canonts8230
    - canonts8280
    - canonts9000
    - canonts9100
    - canonts9180
    - canonts9500
    - canonts9580
    - canonxk50
    - canonxk70
    - canonxk80

</details>

Jika tipe printer tidak tersedia, kemungkinan tersedia dengan driver [Open Printing].

[Open Printing]:open-printing.md
[nonfree]:../../server/index.html#repo-tambahan
