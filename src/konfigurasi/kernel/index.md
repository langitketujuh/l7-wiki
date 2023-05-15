# Kernel Linux

[Kernel](https://www.kernel.org/category/about.html) merupakan program inti komputer yang menangani layanan input/output dari program lain dan menerjemahkannya kedalam intruksi yang dieksekusi oleh prosesor.
Kernel juga menangani perangkat keras seperti memori, monitor, printer, speaker, serta perangkat lainnya.

Secara garis besar kernel bertugas untuk menjembatani perangkat lunak dengan perangkat keras, jika Anda pengguna windows sebelumnya maka tak akan asing dengan istilah **Driver** yang memiliki fungsi serupa dengan kernel.

## Versi kernel

```
uname -r
```

## Memasang kernel LTS

```
get linux-lts{,-headers}
```

## Mencari semua versi kernel

```
search '^linux[0-9.]+-[0-9._]+' --regex
```

## Booting dengan kernel tertentu

* Restart atau hidupkan ulang komputernya.
* Pilih **Advanced Option**.
* Pilih versi Kernel yang tersedia, misalnya **LangitKetujuh with Linux 5.15**.
