# Kget Addons

## Deskripsi

Program tambahan ini bertujuan untuk mengintegrasikan perangkat lunak kget dengan Firefox browser, sehingga berkas yang diunduh melalui firefox akan terunduh otomatis dengan kget.

## Memasang Kget Integrator

```bash
doas curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/kget-integrator -o /usr/bin/kget-integrator
doas chmod +x /usr/bin/kget-integrator
doas curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/Conf/com.kgetdm.firefox.json -o /usr/lib/mozilla/native-messaging-hosts/com.kgetdm.firefox.json
```

## Memasang Addons

* Buka firefox.
* Klik tautan [Kget Integration](https://addons.mozilla.org/en-US/firefox/addon/kget-integration/).
* Klik "Add to Firefox"
* Selesai.
