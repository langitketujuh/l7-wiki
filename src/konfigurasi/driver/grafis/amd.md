# AMD GPU Driver

## Firmware

LangitKetujuh sudah mengikutsertakan firmware `linux-firmware-amd` sehingga perangkat keras AMD GPU sudah mendukung.

## Xorg System

LangitKetujuh juga sudah mengikutsertakan meta paket `xf86-video-amdgpu xf86-video-ati mesa-ati-dri` untuk dukungan Xorg system.

## Vulkan

Pemasangan Vulkan sebagai berikut.

```
doas xbps-install -S Vulkan-Headers Vulkan-Tools Vulkan-ValidationLayers libspa-vulkan mesa-vulkan-overlay-layer vkBasalt vkd3d amdvlk
```

Cek informasi vulkan dengan sistem saat ini.

```
vulkaninfo
```

Vulkan secara bawaan belum terpasang untuk LangitKetujuh versi `20210921` ke bawah, sedangkan versi di selanjutnya sudah terpasang otomatis.

## Vulkan Multilib

Jika ingin menambahkan vulkan 32bit khusus untuk arsitektur `x86_64`, aktifkan dahulu repositori multilib `void-repo-multilib`.

```
doas xbps-install void-repo-multilib
```

Kemudian pasang mesa vulkan-loader dan mesa-vulkan 32bit.

```
doas xbps-install -S vulkan-loader-32bit mesa-vulkan-intel-32bit mesa-vulkan-radeon-32bit
```
