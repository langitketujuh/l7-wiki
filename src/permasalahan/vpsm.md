# Masalah VPSM

## Autentifikasi git protocol

Jika Anda menemui peringatan:
```
fatal: remote error:
   The unauthenticated git protocol on port 9418 is no longor supported.
```

Maka jalankan perintah ini:

```
~/.cache/void-packages/
git remote set-url origin https://github.com/void-linux/void-packages.git
cd -
```

Lalu ulangi `vpsm_config`.
