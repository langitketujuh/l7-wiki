# Mengatasi gagal login ketika selesai memasang OS

## Penyebab gagal login

Terkadang setelah memasang LangitKetujuh OS Anda tidak bisa login dengan pengguna yang telah dibuat. Hal ini disebabkan karena sebelumnya mengalami error ketika selesai memasang sistem operasi, lalu belum di *reboot* (restart). Jadi, setelah gagal memasang sistem operasi diharuskan untuk di*reboot*.

Reboot ini bertujuan untuk menyegarkan pengaturan file sementara installer-nya. Jika Anda mengalami kegagalan ketika memasang sistem operasi dan melanjutkan pemasangan OS, kemungkinan besar akan gagal login.

Intinya, satu kali memasang sistem operasi harus berhasil agar dapat membuat pengguna baru. Jika proses pemasangan tidak berhasil, maka harus di reboot *liveusb*-nya.

Jika sudah terlanjur memasang sistem operasi tetapi gagal login, maka Anda diharuskan mengikuti panduan dibawah ini.

## Masuk ke mode TTY

Pastikan Anda masih ingat kata sandi `root` nya. Ini penting, karena akan masuk ke dalam pengguna `root`. Ketika dalam tampilan login manager masuk ke mode tty. Misalnya menggunakan TTY2 (mulai 2 sampai 6).

Tekan `Ctrl+Alt+F2` untuk masuk ke mode TTY2. Jika Anda menggunakan vendor Lenovo, biasanya menambahkan tombol kombinasi `Fn+`.

```
Username: root
Password: (kata sandi yang sudah dibuat ketika memasang os)
```

Pada `Username:` isikan `root`.

Password, isikan kata sandi yang telah dibuat ketika memasang sebelumnya. Ingat, mengisi sandi ini tidak ditampilkan sehingga wajar akan tampak kosong, padahal sebenarnya sudah terketik.

Jika sudah masuk `root` dengan TTY maka akan terlihat tanda pagar `#`.

## Membuat pengguna baru

Setelah berhasil masuk ke `root`, maka buatlah pengguna baru.

Misalnya anda ingin membuat pengguna `ridwan` (pakai huruf kecil tanpa spasi) dan nama lengkap Anda `Muhammad Ridwan`. Maka perintah yang digunakan adalah:

`useradd ridwan -c 'Muhammad Ridwan'`

Tambahkan kata sandi ke pengguna.

`passwd ridwan`

Mengetik kata sandi memang tidak terlihat, tetapi sebenarnya sudah terketik. Lalu ulangi kata sandi untuk klarifikasi.

## Menambahkan pengguna ke grup `wheel` administrator

`usermod -aG wheel ridwan`

Artinya pengguna `ridwan` ditambahkan ke grup `wheel` yang bisa menjalankan perintah root administrator.

Kemudian ketik `reboot` untuk merestart PC/Laptop. Setelah reboot, login dengan pengguna dan kata sandi yang telah dibuat tadi. Selesai.
