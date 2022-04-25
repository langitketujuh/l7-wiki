# Virt Manager

## Deskripsi

[Virtual Manager] merupakan perangkat lunak untuk mengatur virtualisasi secara mudah dengan GUI. Teknologi virtualisasi menggunakan KVM (Kernel Vital Machine) di kernel linux.

## Cara memasang

```sh
doas xbps-install virt-manager virt-manager-tools qemu
```

## Tambahkan pengguna ke grup kvm

```sh
doas gpasswd -a "$USER" libvirt
doas usermod -aG kvm "$USER"
```

Modprobe untuk mesin 32-bit (i686)

```sh
modprobe kvm-intel  # untuk Intel CPUs
modprobe kvm-amd    # untuk AMD CPUs
```

## Mengaktifkan layanan virtualisasi

```sh
doas ln -s /etc/sv/libvirtd /var/service
doas ln -s /etc/sv/virtlockd /var/service
doas ln -s /etc/sv/virtlogd /var/service
```

Gunakan vsv untuk melihat layanan yang berjalan.

```sh
doas vsv status virt
```

Contoh keluarannya seperti berikut ini.

```sh
➜  ~ doas vsv status virt

   SERVICE              STATE   ENABLED   PID      COMMAND           TIME
 ✔ libvirtd             run     true      5079     libvirtd          22 seconds
 ✔ virtlockd            run     true      5217     virtlockd         16 seconds
 ✔ virtlogd             run     true      5232     virtlogd          10 seconds
```

Pemasangan [Virtual Manager] sudah selesai.

## Penggunaan Virt Manager

Buka "Virtual Machine Manager" di menu.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-1.webp)

Tambahkan mesin virtual baru.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-2.webp)

Pilih lokal install. Klik _Forward_ untuk melanjutkan.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-3.webp)

Hapus ceklis _Automatic detect_. Pilih "Voidlinux" sebagai sistem operasinya.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-4.webp)

Klik _Browse_. Lalu muncul dialog untuk membuat virtual disk. Klik _Browse Local_. Pilih ISO yang dikehendaki.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-5.webp)

Klik _Forward_ untuk melanjutkan.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-6.webp)

Jika ada peringatan akses alamat _permission_ seperti ini. Pilih `Yes` saja.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-7.webp)

Isikan memori yang dikehendaki, misalnya `2000` Mib (2Gib). Isikan jumlah CPU yang tersedia, misalnya `2` CPU. Klik _Forward_ untuk melanjutkan.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-8.webp)

Isikan jumlah penyimpanan mesin virtual. Misalnya `30` GiB. Klik _Forward_ untuk melanjutkan.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-9.webp)

Berikan nama mesin virtualnya. `langitketujuh` sebagai contoh. Klik `Finish` untuk melanjutkan.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-10.webp)

Proses booting sedang berjalan hingga masuk ke desktop mesin virtual. Selesai.

![Virt Manager LangitKetujuh OS](../../media/image/virt-manager-langitketujuh-id-11.webp)

Dikarenakan [Virtual Manager] menggunakan KVM di kernel linux, maka proses layanan cenderung lebih ringan dari pada mesin virtual lainnya.

[Virtual Manager]:https://virt-manager.org/
