# Bootable di Windows

Ketika membuat bootable USB pastikan data penting di dalam flasdisk sudah dicadangkan ke disk eksternal atau cloud agar aman.
Pengguna dapat membuat bootable USB dengan salah satu perangkat lunak dibawah ini.

## Ventoy (disarankan)

<a href="https://github.com/ventoy/Ventoy/releases" target="_blank">Unduh Ventoy</a>

- Unduh Ventoy versi windows, misalnya `ventoy-x.x.x-windows.zip`.
- Setelah selesai mengunduh, klik kanan pilih `Extract Here`.
- Masuk ke folder `ventoy-x.x.x`.
- Jalankan perangkat lunak via Administrator `Ventoy2Disk.exe` dengan mengklik dua kali.
- Pada bagian Device pilih nama flasdisk. Misalnya `F: [4GB] Sandisk`.
- Klik `Install`.
- Jika muncul peringatan, klik `Yes` dua kali.
- Jika sukses, klik `OK`.
- Salin (copy) iso langitketujuh yang sudah diunduh, lalu tempel (paste) ke Flasdisk yang berlabel `Ventoy`.
- Selesai.

## Rufus

<a href="https://rufus.ie/en/#download" target="_blank">Unduh Rufus</a>

- Pilih versi terbaru. Misalnya `Rufus x.xx`.
- Jalankan perangkat lunak via Administrator `rufus-x.x.exe`, klik 2 kali.
- Klik pada kolom `Device`, pilih flashdisk yang akan dijadikan bootable.
- Klik pada kolom `Boot Selection`, pilih `Disk or ISO Image`.
- Klik `SELECT`, pilih iso langitketujuh.
- Klik pada kolom `Partition Scheme`, pilih `MBR`.
- Klik pada kolom `Target system`, pilih `BIOS or UEFI`.
- Klik `START` untuk memulai proses bootable.
- Muncul dialog `ISOHybrid image detected`, klik `Write in DD image mode` (**Penting**), agar tidak terjadi galat saat boot ke desktop), klik `OK` dan muncul peringatan format flashdisk klik `OK` sekali lagi.
- Tunggu sampai selesai. Jika sudah menampilkan status `READY`, klik `CLOSE`.

## Rosa images

<a href="https://wiki.rosalab.ru/en/index.php/ROSA_ImageWriter" target="_blank">Unduh Rosa Image</a>

- Klik `for Windows` untuk mengunduh versi windows.
- Setelah selesai mengunduh, klik kanan pilih `Extract Here`.
- Jalankan perangkat lunak via Administrator `RosaImageWriter.exe`, klik 2 kali.
- Klik pada kolom `Image`.
- Pilih iso langitketujuh.
- Klik pada kolom `USB Device`.
- Pilih flashdisk yang akan dijadikan bootable.
- Pilih `Write`, muncul dialog peringatan format flashdisk pilih `Yes`.
- Tunggu sampai selesai, klik `OK`.

## Balena Etcher

Ukuran berkas Etcher terlalu besar, kami tidak direkomendasikannya karena ukuran perangkat lunak melebihi 100Mb.
