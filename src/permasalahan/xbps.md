# Masalah XBPS

## Transaction breaks

Jika ketika memasang perangkat lunak dengan `get <pkg>` dan menemui error `in transaction breaks installed pkgs`.

Solusinya dengan [memperbarui sistem operasi](../konfigurasi/pembaruan.md) atau dengan menjalankan:

```
upgrade
```

## ERROR: bluez

Jika ketika memperbarui sistem mendapatkan pemberitahuan `ERROR: bluez '/etc/sv/bluetoothd/log/supervise': Directory not empty`.

Solusinya dengan menjalankan:

```
doas rm -rf /etc/sv/bluetoothd/log/supervise
```

Tujuannya untuk mengosongkan kembali log supervise bluetoothd yang lama. Kemudian ulangi [memperbarui sistem operasi](../konfigurasi/pembaruan.md) atau dengan menjalankan:

```
upgrade
```

## Unresolvable `shlib`

Jika ada pemberitahuan yang mirip seperti ini `xxxxxxx-x.x_1: broken, unresolvable shlib 'xxxxxx.so.x'`.

Solusinya dengan [memperbarui sistem operasi](../konfigurasi/pembaruan.md) atau dengan menjalankan:

```
upgrade
```
