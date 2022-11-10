# PipeWire audio server

## Deskripsi

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer. Secara bawaan LangitKetujuh sudah menggunakan PipeWire.

## Cara memasang

Tahapan dibawah ini menjelaskan tentang proses penghapusan PulseAudio terlebih dahulu lalu memasang PipeWire.

```sh
remove pulseaudio alsa-plugins-pulseaudio l7-pulseaudio
```

Pasang PipeWire dan dependensi.

```sh
get pipewire alsa-pipewire libjack-pipewire \
gstreamer1-pipewire l7-pipewire
```

Nonaktifkan layanan audio server di sistem root. Sebab pemasangan ini akan berjalan atas pengguna.

```sh
rsv disable pulseaudio
rsv disable pipewire
rsv disable pipewire-pulse
```

Hapus konfigurasi kustom dan autostart PulseAudio jika ada.

```sh
doas rm -rv /etc/pipewire/pipewire.conf ~/.config/autostart/Pulseaudio*
```

Salin autostart PipeWire agar berjalan saat komputer dinyalakan.

```sh
mkdir -pv ~/.config/autostart/
cp -rfv /etc/skel/.config/autostart/PipeWire* ~/.config/autostart/
```

Kemudian logout atau reboot komputernya.

Cek status PipeWire.

```sh
inxi -A
```

Jika keluarannya seperti dibawah ini maka PipeWire sudah berjalan.

`PipeWire v: [versi] running: yes`
