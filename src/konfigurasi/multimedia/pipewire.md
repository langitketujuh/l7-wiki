# PipeWire audio server

## Deskripsi

PipeWire merupakan kerangka kerja multimedia tingkat rendah yang baru. Ini bertujuan untuk menawarkan pengambilan dan pemutaran audio dan video dengan latensi yang minimal dan dukungan untuk aplikasi berbasis PulseAudio, JACK, ALSA dan GStreamer. Secara bawaan LangitKetujuh sudah menggunakan pipewire.

## Memasang pipewire

Hapus pulseaudio.

```
doas xbps-remove -R pulseaudio alsa-plugins-pulseaudio
```

Pasang pipewire.

```
doas xbps-install -S pipewire alsa-pipewire libjack-pipewire \
libspa-bluetooth gstreamer1-pipewire l7-pipewire
```

Jika mengaktifkan layanan pulseaudio maka hapus dahulu, tetapi secara bawaan sudah tidak aktif. Hal ini agar tidak konflik antara layanan pipewire dengan pulseaudio.
```
doas rm -v /var/service/pulseaudio
```

Tambahkan layanan pipewire.
```
doas ln -s /etc/sv/pipewire /var/service/
doas ln -s /etc/sv/pipewire-pulse /var/service/
```

Menambahkan pengguna ke grup `_pipewire` dan `bluetoothd` agar dapat menjalankan bluetooth audio.

```
doas usermod -aG bluetooth,_pipewire $USER
```

Kemudian logout atau reboot komputernya.

Cek status pipewire.

```
inxi -A
```

Jika keluarannya seperti dibawah ini maka pipewire sudah berjalan.

`PipeWire v: [versi] running: yes`

## Mengganti pipewire dengan pulseaudio

Menghapus pipewire.
```
doas xbps-remove -R pipewire alsa-pipewire libjack-pipewire \
libspa-bluetooth gstreamer1-pipewire l7-pipewire
```

Memasang pulseaudio.

```
doas xbps-install -S pulseaudio alsa-plugins-pulseaudio
```

Menghapus layanan pipewire.
```
doas rm -v /var/service/pipewire
doas rm -v /var/service/pipewire-pulse
```

Kemudian logout atau reboot komputernya.

Cek status pulseaudio.

```
inxi -A
```

Jika keluarannya seperti dibawah ini maka pulseaudio berjalan tanpa pipewire.

`PulseAudio v: [versi] running: yes`
