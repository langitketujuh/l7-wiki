# Cadangkan Data

## Tujuan

Mencadangkan data (backup) bertujuan untuk menyelamatkan data jika terjadi suatu hal yang tidak diinginkan. Mencadangkan data bisa menggunakan disk eksternal (hdd/ssd) atau cloud (Nexclound, Owncloud, Git LFS, GDrive, One Drive, Megasync, dsb).

Jika tidak ada data penting di dalam partisi maka tidak mengapa untuk diformat semua partisinya. Sehingga pemasangan LangitKetujuh bisa dilanjutkan tanpa menyalin data ke disk eksternal.

## Dari Windows

Sistem berkas yang digunakan Windows adalah `NTFS` dari microsoft, sedangkan sistem berkas yang disarankan untuk distribusi linux adalah `Ext4, XFS, Btrfs, F2fs` dan sistem berkas linux lainnya. Maka dari itu sebaiknya data penting disalin ke disk eksternal karena nantinya akan dipartisi ulang.

## Dari GNU/Linux

Jika partisi sudah ada partisi `/home` sebelumnya, maka tidak perlu melalukan penyalinan ulang. Tetapi jika tidak ada partisi `/home` maka backup dahulu data-data penting ke disk eksternal atau cloud.

## Apakah harus mencadangkan data?

Pengguna tidak harus mencadangkan data ke disk eksternal atau ke cloud ketika dalam kondisi tertentu. Pilihan tergantung dari pengguna sendiri. Namun sebaiknya dilakukan pencadangan data agar lebih aman.

Ketika melakukan pemasangan file sistem yang kurang tepat, maka bisa menimbulkan blok-blok di hardisk kurang efisien dan performanya kurang baik (beda lingkungan file system) dan dapat menimbulkan badblock/badsector.

Jadi, ketika migrasi dari windows kami menyarankan untuk menggunakan file system `Btrfs`,`XFS`, `F2fs` atau `Ext4`. Sebab jika masih ada partisi `NTFS` dengan alasan ada data penting yang tidak bisa dihapus dan dibackup, performanya menjadi kurang baik seperti yang sudah dijelaskan diatas.
