# Broadcom

## Cek kartu wifi

Cek kartu jaringan wifi dengan menjalankan konsole perintah ini.

```
inxi -Nxxx
```

Jika keluaran yang dihasilkan adalah seperti ini ` Network: Device 1: Broadcom BCMxxx ...` untuk beberapa tipe [Broadcom](https://www.broadcom.com/) tertentu terkadang tidak dapat terdeteksi.

Untuk mengatasi hal tersebut, di dalam repositori voidlinux sudah menyediakan driver Broadcom versi dkms kemudian dipasang. Namun sebelum memasang driver broadcom dkms pengguna perlu menggunakan koneksi tethering melalui kabel USB atau dengan menggunakan kabel jaringan LAN jika ada.

## Pemasangan

Pasang repositori [nonfree]. Sebab broadcom merupakan perangkat lunak proprietary (tidak terbuka).

```
get void-repo-nonfree
```

Pasang driver broadcom dkms.

```
get broadcom-wl-dkms
```

Kemudian reboot.

Kemungkinan masalah lainnya yaitu meskipun sudah terdeteksi, terkadang Broadcom sulit untuk menyambungkan ke jaringan. Jadi sebisa mungkin untuk menyambungkan dan putuskan jaringan (connect/disconnect) untuk beberapa kali sampai benar-benar tersambung.

[nonfree]:../../server/index.html#repo-tambahan
