# DroidCam Wireless Webcam

## Deskripsi

Perangkat lunak ini bertujuan untuk menghubungkan kamera di smartphone/tablet melalui jaringan untuk dijadikan kamera utama untuk aplikasi desktop, misalnya untuk OBS Studio dan perangkat lunak konferensi. Ini memudahkan pengguna agar menggunakan kamera yang lebih jernih dari pada kamera Webcam sendiri atau untuk menggantikan webcam di komputer.

## Pemasangan

```
doas xbps-install -S droidcam l7-v4l2loopback
```

Cek versi kernel linux yang digunakan.

```
uname -r
```

jika hasilnya `5.15.11_1` berarti menggunakan kernel `linux5.15` (diambil dari angka versi sebelum 2 titik). Lalu konfigurasi ulang kernel agar mengkompilasi ulang setiap modul.

```
doas xbps-reconfigure -v linux5.15 -f
```

Kemudian reboot.

## Mengaktifkan audio

Jika ingin mengaktifkan audio (sebagai opsional saja) di droidcam, maka pengaturan Audio ganti profil `Analog Stereo Duplex` menjadi `Pro Audio`. Perlu diketahui, pergantian profil `Pro Audio` volumenya menjadi sedikit lebih rendah dari sebelumnya.

![PRO Audio Pipewire LangitKetujuh](../media/image/audio-settings-langitketujuh-id.webp)

## Menjalankan DroidCam

Jalankan aplikasi android `DroidCam` atau `DroidCamX` (berbayar). Anda dapat mengunduh aplikasi ini di Google Play atau App Store.

Kemudian jalankan DroidCam di komputer. Samakan alamat IP dan port di smartphone, misalnya `192.168.0.100` port `4747`. Aktifkan `Enable Video` dan `Enable Audio`, Lalu klik `Connect`.

![DroidCAM LangitKetujuh](../media/image/droidcam-langitketujuh-id.webp)

Pastikan video dan audionya sudah terdeteksi di statusbar bawah, sebagai contoh: `Video: /dev/video10, Audio: hw:0,1,0`.

## Menghubungkan dengan OBS Studio

Buka OBS Studio di menu. Klik ikon `+` dibagian Source.

![DroidCAM OBS LangitKetujuh](../media/image/droidcam-obs-langitketujuh-id-1.webp)

Pilih `Video Capture Device (V4L2)`. Kemudian klik OK.

![DroidCAM OBS LangitKetujuh](../media/image/droidcam-obs-langitketujuh-id-2.webp)

Pada bagian Device, pilih `Video Source`. Klik OK.

![DroidCAM OBS LangitKetujuh](../media/image/droidcam-obs-langitketujuh-id-3.webp)

Hasil dari kamera wireless droidcam akan tampil. Anda dapat menambahkan ornamen dan gambar (`+` > `Image`) di bagian source agar lebih dekoratif.

![DroidCAM OBS LangitKetujuh](../media/image/droidcam-obs-langitketujuh-id-4.webp)
