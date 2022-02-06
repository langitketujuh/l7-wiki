# Verifikasi berkas

Sebelum membuat bootable, disarankan untuk melakukan verifikasi berkas. Tujuannya untuk mengetahui berkas iso yang telah diunduh sudah aman atau tidak. LangitKetujuh telah menyediakan kode hash `SHA256` di [halaman verifikasi berkas](https://langitketujuh.id/os/verifikasi), pastikan kode hash yang di dalamnya sama seperti hasil keluaran hash.

## Windows

Jika menggunakan windows, gunakan perangkat lunak [Hash Tools](https://www.binaryfortress.com/Data/Download/?Package=hashtools&Log=100).

- Unduh dan pasang.
- Klik "Add File" untuk menambahkan iso LangitKetujuh OS.
- Ceklis `SHA256` di hash tools.
- Cocokkan dengan kode `SHA256` milik LangitKetujuh OS. Jika hasil kodenya sama, maka berkas iso aman untuk digunakan sebagai USB bootable.

## GNU/Linux

- **KDE Plasma**

  Jika menggunakan KDE Plasma, lebih mudah untuk mengecek hasil kode hash melalui dolphin file manager.

  - Klik kanan berkas isonya. Pilih "Properties"
  - Pilih tab "Checksums".
  - Pilih "SHA256", klik "Calculate".
  - Jika hasil kodenya sama, maka berkas iso aman untuk digunakan sebagai USB bootable.

- **Terminal**

  Pengguna dapat menggunakan perintah `sha256sum` di terminal.

  ```
  cd lokasi/folder/iso/
  sha256sum langitketujuh*.iso
  ```
