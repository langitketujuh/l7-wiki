# Verifikasi Berkas

Sebelum Anda membuat bootable, disarankan untuk melakukan verifikasi berkas. Tujuannya untuk mengetahui berkas iso yang telah diunduh sudah aman atau tidak. LangitKetujuh telah menyediakan kode hash `SHA256` di <a href="https://langitketujuh.id/os/verifikasi" target="_blank">halaman verifikasi berkas</a>, pastikan kode hash yang di dalamnya sama seperti hasil keluaran hash.

## Windows

Jika Anda menggunakan windows, gunakan perangkat lunak <a href="https://www.binaryfortress.com/Data/Download/?Package=hashtools&Log=100" target="_blank">Hash Tools</a>.

- Unduh dan pasang.
- Klik "Add File" untuk menambahkan iso LangitKetujuh OS.
- Ceklis `SHA256` di hash tools.
- Cocokkan dengan kode `SHA256` milik LangitKetujuh OS. Jika hasil kodenya sama, maka berkas iso aman untuk digunakan sebagai USB bootable.

## GNU/Linux

- **KDE Plasma**

  Jika Anda menggunakan KDE Plasma, lebih mudah untuk mengecek hasil kode hash.

  - Klik kanan berkas isonya. Pilih "Properties"
  - Pilih tab "Checksums".
  - Pilih "SHA256", klik "Calculate".
  - Jika hasil kodenya sama, maka berkas iso aman untuk digunakan sebagai USB bootable.

- **Terminal**

  Anda bisa juga menggunakan `sha256sum` melalui perintah terminal.

  ```
  cd lokasi/folder/iso/
  sha256sum langitketujuh*.iso
  ```
