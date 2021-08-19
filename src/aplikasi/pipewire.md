# PipeWire

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer.

## Memasang PipeWire

```
sudo xbps-install -Sy pipewire alsa-pipewire libjack-pipewire libspa-bluetooth gstreamer1-pipewire l7-pipewire
```

Jika mengaktifkan layanan pulseaudio maka hapus dahulu, tetapi secara bawaan sudah tidak aktif. Hal ini agar tidak konflik antara layanan pipewire dengan pulseaudio.
```
sudo rm -v /var/service/pulseaudio
```

Tambahkan layanan pipewire.
```
sudo ln -s /etc/sv/pipewire /var/service/
sudo ln -s /etc/sv/pipewire-pulse /var/service/
```

Menambahkan autostart pipewire ke sesi desktop.

```
mkdir -pv ~/.config/autostart/
cp -iv /etc/skel/.config/autostart/PipeWire.desktop ~/.config/autostart/
```

Kemudian logout atau reboot PC/laptop Anda.

Cek status pipewire.

```
pactl info | grep "Server Name"
```

Jika keluarannya seperti dibawah ini maka pipewire sudah berjalan.

`Server Name: PulseAudio (on PipeWire [versi])`

## Menghapus PipeWire

Apabila ingin menghapus pipewire dan memasang pulseaudio kembali, maka jalankan perintah ini.

```
sudo xbps-remove -R pipewire alsa-pipewire libjack-pipewire libspa-bluetooth gstreamer1-pipewire l7-pipewire
```

Menghapus layanan pipewire.
```
sudo rm -v /var/service/pipewire
sudo rm -v /var/service/pipewire-pulse
```

Cek status pulseaudio.

```
pactl info | grep "Server Name"
```

Jika keluarannya seperti dibawah ini maka pulseaudio berjalan tanpa pipewire.

`Server Name: PulseAudio`
