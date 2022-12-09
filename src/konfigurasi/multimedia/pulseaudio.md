# PulseAudio audio server

## Deskripsi

PulseAudio adalah audio server sebagai middleware antara aplikasi dan perangkat keras, baik menggunakan ALSA atau OSS. Meskipun tujuan utamanya adalah untuk memudahkan konfigurasi audio, desain modularnya memungkinkan pengguna untuk mengonfigurasi daemon secara tepat agar sesuai dengan kebutuhan mereka.
PulseAudio menghadirkan lebih banyak peningkatan, berbagai fitur audio dan perbaikan masalah untuk server suara linux yang masih banyak digunakan saat ini.

## Cara memasang

Secara bawaan LangitKetujuh menggunakan [PipeWire] sebagai audio servernya. Tahapan dibawah ini menjelaskan tentang proses penghapusan PipeWire terlebih dahulu lalu memasang PulseAudio.

Nonaktifkan layanan audio server di sistem root. Sebab pemasangan ini akan berjalan atas pengguna.

```sh
doas rsv disable pulseaudio
doas rsv disable pipewire
doas rsv disable pipewire-pulse
```

Menghapus PipeWire dan dependensinya.

```sh
remove pipewire alsa-pipewire libjack-pipewire \
gstreamer1-pipewire l7-pipewire
```

Hapus autostart PipeWire jika ada.

```sh
rm -rfv ~/.config/autostart/PipeWire*
```

Selanjutnya memasang PulseAudio.

```sh
get pulseaudio alsa-plugins-pulseaudio l7-pulseaudio
```

Kemudian logout atau reboot komputernya.

Cek status PulseAudio.

```sh
inxi -A
```

Jika keluarannya seperti dibawah ini maka PulseAudio berjalan tanpa PipeWire.

`PulseAudio v: [versi] running: yes`

[PipeWire]:pipewire.md
