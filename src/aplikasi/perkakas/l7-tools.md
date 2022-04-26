# L7 Tools

[L7 Tools] merupakan perkakas cli untuk melakukan konfigurasi sistem seperti pembaruan, chroot mode, memasang grub, memperbaiki boot order, memasang pengguna baru dan lain-lain.

- Memperbarui sistem agar menjadi lebih baru.

  ```sh
  doas l7-tools --upgrade
  ```

  Atau menjalankan

  ```sh
  upgrade
  ```

- Memasang grub.

  ```sh
  l7-tools --grub
  ```

- Masuk ke mode chroot, berguna untuk memperbaiki jika ada kernel panic atau masalah lainnya.

  ```sh
  l7-tools --chroot
  ```

- Memperbaiki screen tearing dan menampilakan grub menu sistem operasi lain.

  ```sh
  l7-tools --patch
  ```

- Memasang pengguna baru, berguna untuk mengatasi gagal login.

  ```sh
  l7-tools --user
  ```

- Menghapus perangkat lunak yang tidak dibutuhkan.
  ```sh
  l7-tools --downgrade
  ```

Untuk menjalankan perintah diatas memerlukan akses root (doas/sudo). Lebih jelasnya jalankan `l7-tools --help`.

[L7 Tools]:https://gitlab.com/langitketujuh/l7-tools/
