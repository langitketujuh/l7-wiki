# Tipe disk

## Cadangkan data hardisk

Ketika merubah, mengganti, menambah dan mengurangi partisi. Sebaiknya sudah mencadangkan ke disk eksternal atau cloud agar aman jika terjadi kesalahan teknis. Mohon tidak melanjutkan jika tidak yakin dengan apa yang dilakukan.

## Mengerti dengan sistem partisi sendiri

Gunakan `disk` atau `lsblk` untuk mengetahui sistem partisi. Setidaknya dengan ini dapat mengerti partisi mana yang akan dijadikan partisi sistem, partisi boot, partisi home dan partisi opsional.

## Tipe disk MBR dan GPT

Tipe disk mbr atau yang dikenal tipe dos memiliki fitur yang tidak terlalu banyak dan sistem partisi primer juga maksimalnya 4 partisi. Sedangkan tipe disk GPT dapat membuat partisi primer tak terhingga (semampunya penyimpanan disk), memiliki dukungan partisi lebih dari 2Tib dan proses booting yang cepat.

Ciri khas MBR biasanya digunakan oleh komputer yang low-end (spesifikasi rendah) dan keluaran sebelum 2015. Sedangkan GPT sebaliknya, digunakan oleh komputer keluaran terbaru.

Kami menyarankan menggunakan tipe disk GPT agar dapat memiliki fitur lebih jika biosnya mendukung boot mode UEFI. Dan gunakan tipe disk MBR jika biosnya hanya mendukung boot mode Legacy saja.

## Mengetahui tipe disk MBR atau GPT

Boot mode UEFI diharuskan menggunakan tipe disk `GPT`, sedangkan boot mode legacy diharuskan menggunakan tipe disk `DOS`. Jika disk yang akan digunakan adalah `sda` maka ketik:

```
doas fdisk -l /dev/sda | grep type
```

Jika hasilnya `Disklabel type: dos` maka tipe disk MBR, sedangkan `Disklabel type: gpt` maka tipe disk GPT.
