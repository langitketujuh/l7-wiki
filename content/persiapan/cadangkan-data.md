---
title: Cadangkan data
weight: 2
draft: false
---

{{< tabs "uniqueid" >}}
{{< tab "Windows" >}}
## Mencadangkan data Windows

Alangkah baiknya jika Anda menyalin data-data penting ke disk eksternal. Karena jika awal migrasi dari windows sistem berkas yang digunakan adalah `NTFS` dari microsoft, sedangkan sistem berkas yang disarankan untuk Linux adalah `Ext4, XFS, Btrfs, F2fs` dan sistem berkas linux lainnya. Maka dari itu sebaiknya disalin ke disk eksternal karena nantinya akan dipartisi ulang.

Jika **TIDAK ADA** data penting didalam partisi windows Anda maka tidak mengapa untuk diformat semua partisinya. Sehingga pemasangan LangitKetujuh bisa dilanjutkan tanpa menyalin data ke disk eksternal.
{{< /tab >}}

{{< tab "Linux" >}}
## Mencadangkan data Linux

Jika partisi Anda sudah ada partisi `/home` sebelumnya maka tidak perlu melalukan penyalinan ulang. Tetapi jika tidak ada maka backup dahulu data-data penting Anda ke disk eksternal.

Jika **TIDAK ADA** data penting didalam partisi linux Anda maka tidak mengapa untuk diformat semua partisinya. Sehingga pemasangan LangitKetujuh bisa dilanjutkan tanpa menyalin data ke disk eksternal.
{{< /tab >}}

{{< /tabs >}}
