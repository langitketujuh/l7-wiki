# Audio Tidak Terdeteksi

## Gunakan pipewire server

Saat ini LangitKetujuh OS telah menggunakan Pipewire sebagai server audio, jika sebelumnya menggunakan pulseaudio maka ikuti panduan pemasangan pipewire [di halaman ini](../aplikasi/pipewire.html#memasang-pipewire).

## Nonaktifkan snd-aloop modul

Periksa modul snd-aloop aktif atau tidaknya.

```
cat /etc/modules-load.d/snd-aloop.conf
```

Jika hasilnya kosong atau `#snd-aloop` dengan tanda pagar maka modulnya sudah tidak aktif, tetapi jika keluarannya `snd-aloop` maka modulnya aktif. Untuk menonaktifkannya jalankan perintah dibawah ini.

```
echo "#snd-aloop" | doas tee /etc/modules-load.d/snd-aloop.conf
```

Kemudian reboot agar terjadi perubahannya.
