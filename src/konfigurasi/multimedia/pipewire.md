# PipeWire audio server

## Deskripsi

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer. Secara bawaan LangitKetujuh sudah menggunakan pipewire.

## Cara memasang

```sh
get pipewire alsa-pipewire libjack-pipewire \
gstreamer1-pipewire l7-pipewire
```

Jika mengaktifkan layanan pulseaudio maka hapus dahulu, tetapi secara bawaan sudah tidak aktif. Hal ini agar tidak konflik antara layanan pipewire dengan pulseaudio.

```sh
doas rm -v /var/service/pulseaudio
```

Jika sebelumnya mengaktifkan layanan pipewire di sistem (untuk versi LangitKetujuh sebelumnya), maka kali ini nonaktifkan layanan pipewire di sistem, sebab pipewire akan berjalan di sisi user saja. Tentu hal ini lebih disarankan.

```sh
doas rm -v /var/service/pipewire
doas rm -v /var/service/pipewire-pulse
```

Salin autostart pipewire agar berjalan saat komputer dinyalakan.

```sh
mkdir -pv ~/.config/autostart/
cp -rfv /etc/skel/.config/autostart/PipeWire* ~/.config/autostart/
```

Kemudian logout atau reboot komputernya.

Cek status pipewire.

```sh
inxi -A
```

Jika keluarannya seperti dibawah ini maka pipewire sudah berjalan.

`PipeWire v: [versi] running: yes`

## Mengganti pipewire dengan pulseaudio

Nonaktifkan layanan pipewire jika ada.

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
get pulseaudio alsa-plugins-pulseaudio
```

Kemudian logout atau reboot komputernya.

Cek status pulseaudio.

```sh
inxi -A
```

Jika keluarannya seperti dibawah ini maka pulseaudio berjalan tanpa pipewire.

`PulseAudio v: [versi] running: yes`
