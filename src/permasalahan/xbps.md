# Masalah umum XBPS

## Transaction breaks

Jika Anda ketika memasang aplikasi (`get aplikasi`) dan menemui error `in transaction breaks installed pkgs ...`.

Solusinya dengan memperbarui sistem `Update System` yang ada di menu. Atau dengan menjalankan `sudo l7-tools --update`.

## ERROR: bluez

Jika Anda ketika memperbarui sistem mendapatkan pemberitahuan `ERROR: bluez ... '/etc/sv/bluetoothd/log/supervise': Directory not empty`.

Solusinya dengan menjalankan `sudo rm -rf /etc/sv/bluetoothd/log/supervise` untuk mengosongkan kembali log supervise bluetoothd yang lama.

## Error `shlib`

Jika ada pemberitahuan yang mirip seperti ini `libllvm8-8.0.1_2: broken, unresolvable shlib 'libffi.so.6'`.

Solusinya dengan memperbarui sistem `Update System` yang ada di menu. Atau dengan menjalankan `sudo l7-tools --update`. Lalu hapus paket lama dengan menjalankan `autoclean`.
