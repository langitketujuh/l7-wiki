# Carla

## Deskripsi

[Carla] adalah perangkat lunak bebas yang digunakan untuk memanajemen plugin host audio. Secara bawaan menggunakan JACK sebagai audio driver, tetapi dapat juga dikonfigurasi dengan Alsa dan Pulseaudio.

Carla memerlukan perangkat lunak lain untuk menjalankan JACK Server, seperti [Cadence] atau Qjackctl. Dengan latensi yang rendah dan dipadukan dengan JACK, Carla direkomendasikan untuk produksi dan perekaman audio.

![Carla LangitKetujuh OS](../../media/image/carla-langitketujuh-id-1.webp)

Terdapat pengaturan GUI untuk plugin Calf Gear Studio.

![Carla LangitKetujuh OS](../../media/image/carla-langitketujuh-id-2.webp)

Dukungan Patchbay untuk mengkoneksikan antar perangkat system input dan output audio.

![Carla LangitKetujuh OS](../../media/image/carla-langitketujuh-id-3.webp)

Banyak plugin yang tersedia, seperti `abGate`, `calf`, `invada-studio-plugins`, `swh-lv2`, dan `x42-plugins`.

![Carla LangitKetujuh OS](../../media/image/carla-langitketujuh-id-4.webp)

## Cara memasang

Carla tersedia di repositori dan dapat dipasang melalui [octoxbps] atau konsole.

```sh
get Carla l7-carla
```

[Carla]:https://kx.studio/Applications:Carla
[Cadence]:cadence.md
[octoxbps]:../perkakas/octoxbps.md
