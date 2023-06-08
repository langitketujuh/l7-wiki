# Verifikasi berkas

## Deskripsi

Sebelum membuat bootable dengan flashdisk, disarankan untuk melakukan verifikasi berkas dengan kode hash `MD5`, `SHA1`, atau `SHA256`. Tujuannya untuk mengetahui berkas iso yang telah diunduh sudah benar-benar aman.

Caranya dengan memastikan kode hash yang ada di server sama seperti kode hash yang ada di iso yang telah diunduh. Kode hash dapat Anda lihat ketika mengklik **Unduh ISO** di [tautan halaman unduh](https://langitketujuh.id/os/download/) atau di tautan yang kami kirimkan melalui email untuk pengguna Studio.

Sebagai contoh di salah satu kode hash iso LangitKetujuh:

![LangitKetujuh Hash](../media/image/hash-langitketujuh-id.webp)

Setelah Anda dapatkan kodenya, cocokkan dengan kode hash iso yang telah diunduh di komputer dengan aplikasi berikut ini.

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
  cd ~/Downloads
  sha256sum langitketujuh*.iso
  ```
