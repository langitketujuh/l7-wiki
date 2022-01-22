# Audio Hilang

## Gunakan pipewire server

Saat ini LangitKetujuh OS telah menggunakan Pipewire sebagai server audio, jika sebelumnya menggunakan pulseaudio maka ikuti panduan pemasangan pipewire [di halaman ini](../konfigurasi/multimedia/pipewire.html#memasang-pipewire).

## Nonaktifkan snd-aloop modul

Periksa modul snd-aloop aktif atau tidaknya.

```
cat /etc/modules-load.d/snd-aloop.conf
```

Jika hasilnya kosong atau `#snd-aloop` dengan tanda pagar maka modulnya sudah tidak aktif, tetapi jika keluarannya `snd-aloop` maka modulnya aktif. Untuk menonaktifkannya, hapus konfigurasi modul snd-aloop dengan menjalankan perintah dibawah ini.

```
doas rm /etc/modules-load.d/snd-aloop.conf
```

Kemudian reboot agar terjadi perubahannya.

## Driver Nvidia

Jika Anda menggunakan GPU Nvidia, maka pasang driver yang proprietary agar audio dapat berjalan dengan semestinya. Panduannya ada di [halaman Nvidia](../konfigurasi/driver/grafis/nvidia.html#nvidia).

## Speaker/headset bluetooth

Biasanya bluetooth tidak otomatis menerima audio dari laptop/konputer untuk pertama kalinya. Sebab, secara bawaan output audio ke `builtin analog audio` bukan ke audio bluetooth.

Kendala lainnya yaitu bluetooth tidak berhasil disambungkan. Solusinya dengan menambahkan grup pengguna ke bluetooth.

```
doas usermod -aG bluetooth,_pipewire $USER
```

Kemudian reboot laptop/komputer Anda. Cara diatas hanya untuk iso rilis `20210923` dan sebelumnya, untuk iso versi terbaru sudah terkonfigurasi.

Selanjutnya, hapus daftar speaker/headset yang sebelumnya sudah pernah tersambung di pengaturan `Bluetooth` dengan mengklik ikon tong sampah.

![Remove Audio Bluetooth LangitKetujuh](../media/image/remove-bluetooth-langitketujuh-id.webp)

Lalu muat ulang layanan bluetoothd dengan menjalankan:

```
doas sv restart bluetoothd
```

Kemudian sambungkan kembali bluetoothnya ke speaker/headset. Secara sepintas akan terlihat notifikasi perpindahan ke audio bluetooth. Setelah tersambung, besarnya suara dapat diatur di volume sistem tray.

Jika belum tersambung, ulangi lagi perintah `doas sv restart bluetoothd` seperti diatas. Gambar dibawah ini kami menggunakan TWS `L21 Pro`.

![Audio Bluetooth Connect LangitKetujuh](../media/image/connect-bluetooth-audio-langitketujuh.webp)
