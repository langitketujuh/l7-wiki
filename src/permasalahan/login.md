# Gagal login

## Penyebab

Terkadang setelah memasang LangitKetujuh, tidak dapat login dengan pengguna yang telah dibuat. Hal ini disebabkan karena sebelumnya mengalami error ketika selesai memasang sistem operasi, lalu belum di *reboot* (restart). Jadi, setelah gagal memasang sistem operasi diharuskan untuk di*reboot*.

Reboot ini bertujuan untuk menyegarkan pengaturan file sementara installer-nya. Jika mengalami kegagalan ketika memasang sistem operasi dan melanjutkan pemasangan OS, kemungkinan besar akan gagal login.

Intinya, satu kali memasang sistem operasi harus berhasil agar dapat membuat pengguna baru. Jika proses pemasangan tidak berhasil, maka harus di reboot *liveusb*-nya.

Jika sudah terlanjur memasang sistem operasi tetapi gagal login, maka diharuskan mengikuti panduan dibawah ini.

## Masuk ke mode TTY

Pastikan masih ingat kata sandi `root` nya. Ini penting, karena akan masuk ke dalam pengguna `root`. Ketika dalam tampilan login manager masuk ke mode tty. Misalnya menggunakan TTY2 (atau bisa menggunakan TTY3 hingga TTY6).

Tekan `Ctrl+Alt+F2` untuk masuk ke mode TTY2. Jika menggunakan vendor Lenovo, biasanya menambahkan tombol kombinasi `Fn+` menjadi `Fn+Ctrl+Alt+F2`.

```sh
Username: root
Password: (kata sandi yang sudah dibuat ketika memasang os)
```

Pada `Username:` isikan `root`.

Password, isikan kata sandi yang telah dibuat ketika memasang sebelumnya. Ingat, mengisi sandi ini tidak ditampilkan sehingga wajar akan tampak kosong, padahal sebenarnya sudah terketik.

Jika sudah masuk `root` dengan TTY maka akan terlihat tanda pagar root `root@host /#`.

## Membuat pengguna baru

Setelah berhasil masuk ke `root`, maka buatlah pengguna baru dengan cara:

```sh
l7-tools --user
```

- `User name:` masukkan nama pengguna tanpa spasi, misalnya `myusuf`.
- `Full name:` masukkan nama lengkap pengguna, misalnya `Muhammad Yusuf`.
- `As Administrator:` jika akun baru sebagai administrator, ketik `y`.
- `Continue create user:` ketik `y` untuk melanjutkan membuat akun pengguna baru.
