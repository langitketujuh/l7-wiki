# PipeWire audio server

## Deskripsi

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer. Secara bawaan LangitKetujuh sudah menggunakan pipewire.

Pipewire di langitketujuh sudah menggunakan `wireplumber` sesi media sebagai pengganti `pipewire-media-session` setelah memasang `l7-pipewire` yang terbaru. Baik pipewire dan wireplumber keduanya berjalan diatas pengguna, sehingga tidak akan perdampak ke sistem.

## Cara memasang

```sh
get pipewire alsa-pipewire libjack-pipewire \
gstreamer1-pipewire l7-pipewire wireplumber
```

Jika mengaktifkan layanan pulseaudio maka hapus dahulu, tetapi secara bawaan sudah tidak aktif. Hal ini agar tidak konflik antara layanan pipewire dengan pulseaudio.

```sh
doas rm -v /var/service/pulseaudio
```

Jika sebelumnya mengaktifkan layanan pipewire di sistem (untuk versi langitketujuh sebelumnya), maka kali ini nonaktifkan layanan pipewire di sistem, sebab pipewire akan berjalan di sisi user saja. Tentu hal ini lebih disarankan.

```sh
doas rm -v /var/service/pipewire
doas rm -v /var/service/pipewire-pulse
```

Salin autostart pipewire agar berjalan saat komputer baru dinyalakan.

```sh
cp -fv /etc/skel/.config/autostart/PipeWire* ~/.config/autostart/
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
gstreamer1-pipewire l7-pipewire wireplumber
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
