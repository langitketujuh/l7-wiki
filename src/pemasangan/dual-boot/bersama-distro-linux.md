# Dual boot bersama distro linux

## Metode

Pemasangan dual boot dengan linux lain adalah menjadikan LangitKetujuh akan menjadi sistem operasi kedua. Dengan syarat memiliki partisi `/boot` atau `/boot/efi` dan partisi `/home` yang ingin dipertahankan tanpa format. Partisi `/home` akan dijadikan satu dengan distro linux yang lama sehingga perlu membuat satu partisi baru untuk `/` LangitKetujuh.

Meskipun partisi `/home` jadi satu, `username` baru untuk LangitKetujuh dibedakan dengan `username` distro linux yang lama agar tidak tumpang tindih, kecuali jika menginginkannya.

Jika tidak mempunyai partisi `/home` maka pengguna membuat dua partisi baru, yaitu `/` dan `/home` untuk LangitKetujuh.

## Menyiapkan partisi baru

Gunakan KDE Partition, GParted, GNOME Disk, `cfdisk` atau alat pemartisi lainnya. Lalu resize ruang partisi yang ada untuk digunakan partisi sistem LangitKetujuh.

| Edisi      | Minimal | Disarankan |
| :--------- | :------ | :--------- |
| **Home**   | 10 GiB  | 25 Gib     |
| **Studio** | 20 GiB  | 40 Gib     |

Berikut ini adalah contoh skema partisi di dalam disk yang sudah memiliki partisi **/boot**, **/**, dan **/home**. Sehingga perlu partisi **/** baru.

```sh
lsblk -o NAME,TYPE,FSTYPE,SIZE,LABEL,MOUNTPOINT
```

- Skema partisi lama.

  ```sh
  NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT
  sda    disk           498G
  ├─sda1 part vfat    512MiB
  ├─sda2 part f2fs       50G root
  └─sda3 part f2fs      438G home
  ```

- Skema partisi baru.

  ```sh
  NAME   TYPE FSTYPE    SIZE LABEL MOUNTPOINT
  sda    disk           498G
  ├─sda1 part vfat    512MiB
  ├─sda2 part f2fs       50G root
  ├─sda3 part f2fs      398G home
  └─sda4 part f2fs       40G
  ```

Sebagai contoh, terdapat partisi baru yaitu `sda4` dengan ukuran `40G` yang nantinya akan dijadikan partisi `/` untuk LangitKetujuh. Sedangkan partisi `/home` menggunakan `sda3` dengan partisi lama jika ada.

## Pemasangan

Perangkat lunak pemasang di LangitKetujuh OS tidak menggunakan GUI, tetapi menggunakan Ncurses CLI. Sehingga navigasinya menggunakan arah panah ⬆️ ➡️ ⬇️ ⬅️, `tab` dan `enter` di keyboard.

Buka menu, pilih `Install to Disk`.

![LangitKetujuh Install](../../media/image/install-menu.webp)

Atau menggunakan `Konsole` di menu, kemudian ketik perintah berikut ini.

```sh
doas langitketujuh-install
```
Kata sandi: `langitketujuh`

![LangitKetujuh Install](../../media/image/install-splash.webp)

Tekan `Enter` untuk melanjutkan ke pemasangan. Pengguna akan melihat langkah demi langkah tahapan yang harus diselesaikan. Seperti `Keyboard`, `Network`, `Source`, `Hostname` hingga ke `Install`.

![LangitKetujuh Install](../../media/image/install-step.webp)

### Keyboard

Pilih `us` untuk jenis papan ketik qwerty.

![LangitKetujuh Install](../../media/image/install-keyboard-us.webp)

### Network

Lewati tahap ini karena pemasangan sebaiknya dilakukan secara offline. Jika terlanjur terklik, pilih `Back` untuk kembali.

### Source

Pilih `Local` untuk pemasangan offline agar lebih cepat prosesnya.

![LangitKetujuh Install](../../media/image/install-source.webp)

### Hostname

Hostname ditulis dengan huruf kecil. Bisa menggunakan nama brand komputer, nama website, atau nama keluarga. Contohnya `studio`, `langitketujuh`, `linux`, dsb.

![LangitKetujuh Install](../../media/image/install-hostname.webp)

### Locale

Pilih `en_US.UTF-8` untuk menggunakan Bahasa Inggris. Atau `id_ID.UTF-8` untuk menggunakan Bahasa Indonesia.

![LangitKetujuh Install](../../media/image/install-locale.webp)

### Timezone

Pilih zona waktu benua yang dikehendaki, misalnya `Asia`.

![LangitKetujuh Install](../../media/image/install-timezone-asia.webp)

Selanjutnya pilih zona waktu kota, misalnya `Jakarta` untuk zona waktu WIB. Pengguna juga dapat memilih zona waktu lainnya seperti `Makassar` untuk WITA atau `Jayapura` untuk WIT.

![LangitKetujuh Install](../../media/image/install-timezone-jakarta.webp)

### Root Password

Masukkan kata sandi yang unik dan mudah diingat.

> 🔔 **Tips**
>
> Gunakan kata sandi dengan kombinasi angka dan huruf sekitar 5 karakter.

![LangitKetujuh Install](../../media/image/install-password-root.webp)

Kemudian ulangi lagi kata sandi yang sama untuk klarifikasi.

![LangitKetujuh Install](../../media/image/install-password-root-2.webp)

### User Account

> 🔔 **Tips**
>
> Gunakan nama pengguna yang berbeda dengan pengguna distro linux yang lama agar tidak tumpang tindih, hal ini untuk membuat pengaturan baru untuk distro LangitKetujuh. Jika ingin menimpa, boleh saja untuk menggunakan username yang sama.

Nama pengguna primer/utama ditulis dengan huruf kecil. Bisa menggunakan nama panggilan. Contohnya `myusuf`, `hervy`, `aziz`, `aris` dsb.

![LangitKetujuh Install](../../media/image/install-userlogin.webp)

Kemudian tulis nama pengguna untuk login. Bisa menggunakan huruf kapital dan spasi. Misalnya `Muhammad Yusuf`, `Hervy Qurrotul`, `LangitKetujuh Studio` dsb.

![LangitKetujuh Install](../../media/image/install-username.webp)

Masukkan kata sandi yang unik dan mudah diingat.

![LangitKetujuh Install](../../media/image/install-username-pass.webp)

Kemudian ketik lagi kata sandi yang sama untuk klarifikasi.

![LangitKetujuh Install](../../media/image/install-username-pass-2.webp)

Untuk "group membership" lewati saja dengan memilih `OK`.

![LangitKetujuh Install](../../media/image/install-membership.webp)

### BootLoader

Bootloader tergantung dari letak disk yang akan di partisi sebagai sistem root **/**. Biasanya menggunakan dari disk utama `/dev/sda`. Sebagai contoh `/dev/sda` SSD dengan ukuran 120GB.

![LangitKetujuh Install](../../media/image/install-bootloader.webp)

Pada dialog `use graphical boot loader` pilih `Yes`.

![LangitKetujuh Install](../../media/image/install-bootloader-graphic.webp)

### Partition

> ⚠️ **Peringatan**
>
> Ketika merubah, mengganti, menambah dan mengurangi partisi. Sebaiknya sudah mencadangkan ke disk eksternal atau cloud agar aman jika terjadi kesalahan teknis. Mohon tidak melanjutkan jika tidak yakin dengan apa yang dilakukan.

Abaikan jika sudah melakukan pemartisian diawal, lalu lanjut ke tahap **Filesystems**. Jika belum diatur partisinya, pilih `/dev/sda` (disk saat ini). Kemudian pilih `OK`.

![LangitKetujuh Install](../../media/image/install-partition.webp)

Pilih `cfdisk` sebagai perkakas partisinya.

![LangitKetujuh Install](../../media/image/install-partition-type-softw.webp)

Muncul peringatan pemilihan file system untuk partisi boot, `Enter` untuk melanjutkan.

![LangitKetujuh Install](../../media/image/install-partition-cfdisk.webp)

Dengan `cfdisk`, pengguna dapat mengatur partisinya seperti menambah partisi dengan memilih `New`, menghapus dengan memilih `Delete`, merubah ukuran dengan `Resize` dan lain sebagainya. Sesuaikanlah dengan kebutuhan partisi yang diinginkan.

Berikut ini adalah contoh skema partisi yang kami sarankan.

  > ⚠️ **Peringatan**
  >
  > Pastikan untuk jenis partisi boot menggunakan tipe partisi `Linux filesystem` untuk Legacy. Dan tipe `EFI System` untuk UEFI

- **Legacy (dos/mbr)**

  Jika menggunakan legacy, pastikan partisi boot sudah mengaktifkan tanda bintang `*` sebagai tanda bootable. Khusus untuk legacy saja.

  |   Partisi   | Bootable | Jumlah |        Tipe        | Kondisi partisi |
  | :---------: | :------: | :----: | :----------------: | :-------------: |
  | `/dev/sda1` |    *     | `512M` | `Linux filesystem` |      Lama       |
  | `/dev/sda3` |          | `40G`  | `Linux filesystem` |      Lama       |
  | `/dev/sda4` |          |  `~`   | `Linux filesystem` |      Baru       |

- **UEFI (gpt)**

  Jika menggunakan UEFI, maka langsung saja membuat partisinya seperti contoh berikut ini.

  |   Partisi   | Jumlah |        Tipe        | Kondisi partisi |
  | :---------: | :----: | :----------------: | :-------------: |
  | `/dev/sda1` | `512M` |    `EFI System`    |      Lama       |
  | `/dev/sda3` | `40G`  | `Linux filesystem` |      Lama       |
  | `/dev/sda4` |  `~`   | `Linux filesystem` |      Baru       |

  * Baru = Partisinya diformat
  * Lama = Partisinya tidak diformat
  * Partisi `sda1` akan digunakan sebagai `/boot` atau `/boot/efi`.
  * Partisi `sda3` akan digunakan sebagai `/home` tidak perlu membuat partisi baru, karena sudah ada dari pemartisian linux sebelumnya.
  * Partisi `sda4` akan digunakan sebagai `/` sistem root LangitKetujuh dengan partisi baru.

Jika sudah yakin, pilih `write` lalu ketik `yes`. Kemudian pilih `quit` untuk keluar.

![LangitKetujuh Install](../../media/image/install-partition-cfdisk-write.webp)

### Filesystems

> 🔔 **Tips**
>
> Khusus SSD untuk bagian partisi root disarankan menggunakan `F2fs`/`Btrfs` sedangkan HDD menggunakan `XFS`/`Ext4`.

Filesystem akan menentukan setiap partisi untuk digunakan dalam mountpoint hirarki sistem operasi. Umumnya terdiri dari 3 mountpoint, yaitu:

  1. `/boot` atau `/boot/efi`
  2. `/`
  3. `/home`

Berdasarkan skema partisi diatas maka mountpoint filesystem akan seperti berikut ini.
- `sda1` Akan dijadikan partisi boot. Tidak diformat.
- `sda2` **Dilewati** karena partisi sistem root distro linux yang lama.
- `sda3` Akan dijadikan satu partisi home dengan distro linux yang lama. Tidak diformat.
- `sda4` Sebuah partisi baru. Akan dijadikan partisi sistem LangitKetujuh.

Sedangkan untuk pemilihan mountpoint akan terlihat seperti berikut ini.

- **Legacy (dos/mbr)**

  Jika menggunakan legacy maka menggunakan `/boot`.

  |   Partisi   | Tipe Partisi | Mount Point | New Filesystems |
  | :---------: | :----------: | :---------: | :-------------: |
  | `/dev/sda3` |    `F2fs`    |   `/home`   |    **`no`**     |
  | `/dev/sda4` |    `F2fs`    |     `/`     |      `yes`      |

- **UEFI (gpt)**

  Jika menggunakan UEFI maka menggunakan `/boot/efi`.

  |   Partisi   | Tipe Partisi | Mount Point | New Filesystems |
  | :---------: | :----------: | :---------: | :-------------: |
  | `/dev/sda1` |    `Vfat`    | `/boot/efi` |    **`no`**     |
  | `/dev/sda3` |    `F2fs`    |   `/home`   |    **`no`**     |
  | `/dev/sda4` |    `F2fs`    |     `/`     |      `yes`      |

Untuk partisi `/home` sendiri tergantung tipe partisinya. Bisa jadi menggunakan `F2fs` atau `Ext4` sebelumnya.

Pada cuplikan gambar dibawah ini merupakan contoh skema partisi dengan menggunakan SSD di mode UEFI dan kami sudah menggunakan `F2fs` untuk partisi `/home`.

- **Bagian 1**, partisi `/dev/sda1`. Pilih partisi pertama untuk boot. Kemudian pilih tipe `vfat` untuk dijadikan partisi boot `/boot/efi`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-boot-vfat.webp)

  Ketik mount point yang dikehendaki, yaitu `/boot/efi`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-boot-efi.webp)

  Pilih `No` agar partisi EFI tidak terhapus, sebab metode pemasangan bersama linux lain ini mempertahankan partisi EFI yang sebelumnya.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda1-format-no.webp)

- **Bagian 2**, partisi `/dev/sda4`. Pilih partisi keempat untuk dijadikan sistem root `/`. Kemudian pilih tipe `f2fs` untuk SSD di partisi root.

  ![LangitKetujuh Install](../../media/image/install-filesystem-root-f2fs.webp)

  Ketik mount point yang dikehendaki, yaitu `/`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-root.webp)

  Pilih untuk membuat file system root baru. Hal ini akan menghapus partisi tersebut.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda2-format-yes.webp)

- **Bagian 3**, partisi `/dev/sda3`. Pilih partisi ketiga untuk dijadikan `/home`. Pilih tipe `f2fs` untuk SSD di partisi home. Ini tergantung dari tipe partisi sebelumnya, bisa menggunakan `Ext4` atau `F2fs`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-home-f2fs.webp)

  Ketik mount point yang dikehendaki, yaitu `/home`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-home.webp)

  > ⚠️ Khusus partisi /home

  Pilih `No` agar partisi home tidak terhapus, sebab metode pemasangan bersama linux lain ini mempertahankan partisi home yang sebelumnya.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda3-format-no.webp)

  Jika sudah selesai pilih `Done`.

  <!--![LangitKetujuh Install](../../media/image/install-filesystem-done.webp)-->

### Settings

Pilih `Settings` untuk melihat ringkasan pengaturan pemasangan yang akan dijalankan.

![LangitKetujuh Install](../../media/image/install-setting-menu.webp)

<!--![LangitKetujuh Install](../../media/image/install-setting-up.webp)-->

Gulir ke bawah akan mendapati pengaturan partisinya. Pada bagian `MOUNTPONT`, nilai `1` artinya partisi akan diformat dan `0` partisi dibiarkan tetap.

<!--![LangitKetujuh Install](../../media/image/install-setting-1-1-0.webp)-->

Tekan `Exit` untuk keluar dari ringkasan pengaturan.

### Install

Jika sudah yakin, Pilih `Install` dan `OK` untuk melanjutkan operasi pemasangan. Pilih `Yes` untuk memformat partisi sesuai pangaturan yang sudah diringkas pengaturan `Settings` sebelumnya.

> ⚠️ **Peringatan**
>
> Adanya penghapusan partisi jika tertulis NEW FILESYSTEM.

<!--![LangitKetujuh Install](../../media/image/install-install-0-1-0.webp)-->

Tunggu proses hingga selesai hingga ada perintah untuk melakukan reboot. Pilih `Yes` untuk reboot. Setelah mesin mati, cabut flasdisk agar tidak kembali ke mode Live USB.

## Pasca pemasangan

Setelah berhasil memasang sistem operasi LangitKetujuh, disarankan untuk [memperbarui sistem operasi](../../konfigurasi/pembaruan.md) agar memperoleh versi yang terbaru.

## Mendeteksi distribusi GNU/linux lain

Untuk menampilkan distribusi GNU/Linux lain di grub menu dapat dilakukan dengan cara [memperbarui sistem operasi](../../konfigurasi/pembaruan.md), maka secara otomatis akan menampilkan daftar grub LangitKetujuh dengan distribusi lain ketika direboot kembali.

Cara lainnya dengan menjalankan perintah dibawah ini di konsole.

```sh
doas l7-tools --patch
```
