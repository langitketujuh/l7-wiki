# PulseAudio audio server

## Deskripsi

PulseAudio adalah audio server sebagai middleware antara aplikasi dan perangkat keras, baik menggunakan ALSA atau OSS. Meskipun tujuan utamanya adalah untuk memudahkan konfigurasi audio, desain modularnya memungkinkan pengguna untuk mengonfigurasi daemon secara tepat agar sesuai dengan kebutuhan mereka.
PulseAudio menghadirkan lebih banyak peningkatan, berbagai fitur audio dan perbaikan masalah untuk server suara linux yang masih banyak digunakan saat ini.

## Cara memasang

Secara bawaan LangitKetujuh menggunakan [PipeWire] sebagai audio servernya. Tahapan dibawah ini menjelaskan menghapus PipeWire terlebih dahulu lalu memasang PulseAudio.

Pertama, nonaktifkan layanan pipewire jika ada.

```sh
doas rm -v /var/service/pipewire
doas rm -v /var/service/pipewire-pulse
```

Menghapus pipewire dan dependensinya.

```sh
remove pipewire alsa-pipewire libjack-pipewire \
gstreamer1-pipewire l7-pipewire
```

Hapus autostart pipewire.

```sh
rm -rfv ~/.config/autostart/PipeWire*
```

Selanjutnya memasang pulseaudio.

```sh
get pulseaudio alsa-plugins-pulseaudio l7-pulseaudio
```

Pasang autostart pulseaudio.

```sh
mkdir -pv ~/.config/autostart/
cp -rfv /etc/skel/.config/autostart/Pulseaudio* ~/.config/autostart/
```

Kemudian logout atau reboot komputernya.

Cek status pulseaudio.

```sh
inxi -A
```

Jika keluarannya seperti dibawah ini maka pulseaudio berjalan tanpa pipewire.

`PulseAudio v: [versi] running: yes`

[PipeWire]:pipewire.md
