# L7 Tools

`l7-tools` merupakan perkakas cli untuk melakukan konfigurasi sistem seperti pembaruan, chroot mode, memasang grub, memperbaiki boot order, memasang pengguna baru dan lain-lain.

- Memperbarui sistem agar menjadi lebih baru.

  ```sh
  l7-tools --update
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

Untuk menjalankan perintah diatas memerlukan akses root (doas). Lebih jelasnya jalankan `l7-tools --help`.
