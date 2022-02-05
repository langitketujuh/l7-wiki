# Single Boot Pasang Ulang

## Metode

Pemasangan single boot pasang ulang artinya pemasangan LangitKetujuh yang terdapat partisi `/home` dan ingin mempertahankannya. Jika tidak mempunyai partisi `/home` maka cadangkan data dahulu ke disk eksternal atau ke cloud.

## Pemasangan

Perangkat lunak pemasang di LangitKetujuh OS tidak menggunakan GUI, tetapi menggunakan Ncurses CLI. Sehingga navigasinya menggunakan arah panah ⬆️ ➡️ ⬇️ ⬅️, `tab` dan `enter` di keyboard.
Buka perangkat lunak `konsole` di menu, kemudian ketik perintah berikut untuk menuju pemasang LangitKetujuh OS.

```bash
doas langitketujuh-install
```
Kata sandinya: `langitketujuh`

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

> 🔔 Gunakan kata sandi dengan kombinasi angka dan huruf sekitar 5 karakter.

![LangitKetujuh Install](../../media/image/install-password-root.webp)

Kemudian ulangi lagi kata sandi yang sama untuk klarifikasi.

![LangitKetujuh Install](../../media/image/install-password-root-2.webp)

### User Account

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

> ⚠️ **Cadangkan data Hardisk**
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

- **Legacy (dos/mbr)**

  Jika menggunakan legacy, pastikan partisi boot sudah mengaktifkan tanda bintang `*` sebagai tanda bootable. Khusus untuk legacy saja.

  |  Nama Disk  | Bootable | Jumlah |  Tipe   | Kondisi partisi |
  | :---------: | :------: | :----: | :-----: | :-------------: |
  | `/dev/sda1` |    *     | `512M` | `linux` |      Baru       |
  | `/dev/sda2` |          | `40G`  | `linux` |      Baru       |
  | `/dev/sda3` |          |  `~`   | `linux` |      Lama       |

- **UEFI (gpt)**

  Jika menggunakan UEFI, maka langsung saja membuat partisinya seperti contoh berikut ini.

  |  Nama Disk  | Jumlah |  Tipe   | Kondisi partisi |
  | :---------: | :----: | :-----: | :-------------: |
  | `/dev/sda1` | `512M` | `linux` |      Baru       |
  | `/dev/sda2` | `40G`  | `linux` |      Baru       |
  | `/dev/sda3` |  `~`   | `linux` |      Lama       |

  * Baru = Partisinya diformat
  * Lama = Partisinya tidak diformat
  * Partisi untuk `/home` tidak perlu dibuat karena masih menggunakan pastisi yang lama dan jangan diformat.

Partisi `/dev/sda3` tidak perlu dibuat, karena sudah ada dari pemartisian linux sebelumnya.

![LangitKetujuh Install](../../media/image/install-partition-cfdisk-part.webp)

Jika sudah yakin, pilih `write` lalu ketik `yes`. Kemudian pilih `quit` untuk keluar.

![LangitKetujuh Install](../../media/image/install-partition-cfdisk-write.webp)

### Filesystems

> 🔔 Khusus SSD untuk bagian partisi root disarankan menggunakan `F2fs`, sedangkan HDD menggunakan `XFS`, `Btrfs` atau `Ext4`.

Filesystem akan menentukan setiap partisi untuk digunakan dalam mountpoint hirarki sistem operasi. Umumnya terdiri dari 3 mountpoint, yaitu:

  1. `/boot` atau `/boot/efi`
  2. `/`
  3. `/home`

Berikut ini adalah contoh skema filesystem yang kami sarankan.

- **Legacy (dos/mbr)**

  Jika menggunakan legacy maka menggunakan `/boot`.

  |  Nama Disk  | Tipe Partisi | Mount Point | New Filesystems (Format) |
  | :---------: | :----------: | :---------: | :----------------------: |
  | `/dev/sda1` |    `Vfat`    |   `/boot`   |          `yes`           |
  | `/dev/sda2` |    `XFS`     |     `/`     |          `yes`           |
  | `/dev/sda3` |    `Ext4`    |   `/home`   |         **`no`**         |

- **UEFI (gpt)**

  Jika menggunakan UEFI maka menggunakan `/efi/boot`.

  |  Nama Disk  | Tipe Partisi | Mount Point | New Filesystems (Format) |
  | :---------: | :----------: | :---------: | :----------------------: |
  | `/dev/sda1` |    `Vfat`    | `/boot/efi` |          `yes`           |
  | `/dev/sda2` |    `XFS`     |     `/`     |          `yes`           |
  | `/dev/sda3` |    `Ext4`    |   `/home`   |         **`no`**         |

Pada cuplikan gambar dibawah ini merupakan contoh skema partisi dengan menggunakan SSD di mode UEFI.

- **Bagian 1**, partisi `/dev/sda1`. Pilih partisi pertama untuk boot.

  ![LangitKetujuh Install](../../media/image/install-filesystem-boot-efi.webp)

  Kemudian  pilih tipe `vfat` untuk dijadikan partisi boot `/boot/efi`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-boot-vfat.webp)

  Ketik mount point yang dikehendaki, yaitu `/boot/efi`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-boot-efi.webp)

  Pilih untuk membuat file system boot baru. Hal ini akan menghapus partisi tersebut.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda1-format-yes.webp)

- **Bagian 2**, partisi `/dev/sda2`. Pilih partisi kedua untuk dijadikan sistem root `/`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-root.webp)

  Kemudian pilih tipe `f2fs` untuk SSD di partisi root.

  ![LangitKetujuh Install](../../media/image/install-filesystem-root-f2fs.webp)

  Ketik mount point yang dikehendaki, yaitu `/`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-root.webp)

  Pilih untuk membuat file system root baru. Hal ini akan menghapus partisi tersebut.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda2-format-yes.webp)

- **Bagian 3**, partisi `/dev/sda3`. Pilih partisi ketiga untuk dijadikan `/home`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-home.webp)

  Kemudian pilih tipe `f2fs` untuk SSD di partisi home.

  ![LangitKetujuh Install](../../media/image/install-filesystem-home-f2fs.webp)

  Ketik mount point yang dikehendaki, yaitu `/home`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-mount-home.webp)

  > ⚠️ Khusus partisi /home

  Pilih `No` agar partisi home tidak terhapus, sebab metode pemasangan ulang ini mempertahankan partisi home yang sebelumnya.

  ![LangitKetujuh Install](../../media/image/install-filesystem-sda3-format-no.webp)

  Jika sudah selesai pilih `Done`.

  ![LangitKetujuh Install](../../media/image/install-filesystem-done.webp)

### Settings

Pilih `Settings` untuk melihat ringkasan pengaturan pemasangan yang akan dijalankan.

![LangitKetujuh Install](../../media/image/install-setting-menu.webp)

![LangitKetujuh Install](../../media/image/install-setting-up.webp)

Gulir ke bawah akan mendapati pengaturan partisinya. Pada bagian `MOUNTPONT`, nilai `1` artinya partisi akan diformat dan `0` partisi dibiarkan tetap.

![LangitKetujuh Install](../../media/image/install-setting-1-1-0.webp)

Tekan `Exit` untuk keluar dari ringkasan pengaturan.

### Install

Jika sudah yakin, Pilih `Install` dan `OK` untuk melanjutkan operasi pemasangan. Pilih `Yes` untuk memformat partisi sesuai pangaturan yang sudah diringkas pengaturan `Settings` sebelumnya.

> ⚠️ Adanya penghapusan partisi jika tertulis NEW FILESYSTEM

![LangitKetujuh Install](../../media/image/install-install-1-1-0.webp)

Tunggu proses hingga selesai hingga ada perintah untuk melakukan reboot. Pilih `Yes` untuk reboot. Setelah mesin mati, cabut flasdisk agar tidak kembali ke mode Live USB.

## Pasca pemasangan

Setelah berhasil memasang sistem operasi LangitKetujuh, disarankan untuk [memperbarui sistem operasi](../../konfigurasi/pembaruan.md) agar memperoleh versi yang terbaru.
