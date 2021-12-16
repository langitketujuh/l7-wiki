# Masalah Umum XBPS

## Transaction breaks

Jika Anda ketika memasang aplikasi (`get aplikasi`) dan menemui error `in transaction breaks installed pkgs ...`.

Solusinya dengan memperbarui sistem `Update System` yang ada di menu. Atau dengan menjalankan `doas l7-tools --update`.

## ERROR: bluez

Jika Anda ketika memperbarui sistem mendapatkan pemberitahuan `ERROR: bluez ... '/etc/sv/bluetoothd/log/supervise': Directory not empty`.

Solusinya dengan menjalankan `doas rm -rf /etc/sv/bluetoothd/log/supervise` untuk mengosongkan kembali log supervise bluetoothd yang lama.

## Unresolvable `shlib`

Jika ada pemberitahuan yang mirip seperti ini `xxxxxxx-x.x_1: broken, unresolvable shlib 'xxxxxx.so.x'`.

Solusinya dengan memperbarui sistem `Update System` yang ada di menu. Atau dengan menjalankan `doas l7-tools --update`. Lalu hapus paket lama dengan menjalankan `autoclean`.
