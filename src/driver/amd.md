# AMD GPU Driver

## Firmware

LangitKetujuh sudah memasukkan firmware `linux-firmware-amd` sehingga perangkat keras AMD GPU sudah mendukung.

## Xorg

LangitKetujuh juga sudah memasukkan meta paket `mesa-ati-dri`.

## Vulkan

Memasang vulkan di LangitKetujuh OS ` sudo xbps-install -S l7-pkg-vulkan`.

Depedensi yang ada didalam `l7-pkg-vulkan` tersebut yaitu `Vulkan-Headers Vulkan-Tools Vulkan-ValidationLayers libspa-vulkan mesa-vulkan-overlay-layer vkBasalt vkd3d amdvlk nv-codec-headers`. Vulkan secara bawaan belum terpasang untuk LangitKetujuh versi `20210921` ke bawah, sedangkan versi di selanjutnya sudah dimasukkan.
