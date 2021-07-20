# PipeWire

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer.

## Memasang PipeWire

```
sync
get pipewire alsa-pipewire libjack-pipewire
get l7-pipewire
```

Agar tidak konflik dengan pipewire, maka layanan pulseaudio dihapus.
```
sudo rm -v /var/service/pulseaudio
```

Tambahkan layanan pipewire.
```
sudo ln -s /etc/sv/pipewire /var/service/
```

Menambahkan autostart pipewire ke sesi desktop.

```
cp -iv /etc/skel/.config/autostart/PipeWire.desktop $HOME/.config/autostart/
```

Kemudian logout atau reboot mesin Anda.

Cek status pipewire.

```
pactl info | grep "Server Name"
```

Jika keluarannya seperti dibawah ini maka pipewire sudah berjalan.

`Server Name: PulseAudio (on PipeWire [versi])`

## Menghapus PipeWire

Apabila ingin menghapus pipewire dan memasang pulseaudio kembali, maka jalankan perintah ini.

```
remove pipewire alsa-pipewire libjack-pipewire l7-pipewire
```

Menghapus layanan pipewire.
```
sudo rm -v /var/service/pipewire
```

Cek status pulseaudio.

```
pactl info | grep "Server Name"
```

Jika keluarannya seperti dibawah ini maka pulseaudio berjalan tanpa pipewire.

`Server Name: PulseAudio`
