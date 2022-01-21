# Perkakas l7-tools

`l7-tools` merupakan perkakas cli untuk melakukan konfigurasi sistem seperti pembaruan, chroot mode, memasang grub, fiksasi boot order, memasang pengguna baru dan lain-lain.

- Memperbarui sistem agar menjadi lebih baru.

  ```
  l7-tools --update
  ```

- Memasang grub.

  ```
  l7-tools --grub
  ```

- Masuk ke mode chroot, berguna untuk memperbaiki jika ada kernel panic atau masalah lainnya.

  ```
  l7-tools --chroot
  ```

- Memperbaiki screen tearing dan menampilakan grub menu sistem operasi lain.

  ```
  l7-tools --patch
  ```

- Memasang pengguna baru, berguna untuk mengatasi gagal login.

  ```
  l7-tools --user
  ```

- Menghapus perangkat lunak yang tidak dibutuhkan.
  ```
  l7-tools --downgrade
  ```

Anda memerlukan akses root (doas) untuk menjalankan perintah diatas. Lebih jelasnya jalankan `l7-tools --help`.
