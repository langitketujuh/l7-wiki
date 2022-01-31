# Kget Addons

## Deskripsi

Bertujuan untuk mengintegrasikan perangkat lunak kget dengan Firefox browser.

## Memasang Kget Integrator

```bash
doas curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/kget-integrator -o /usr/bin/kget-integrator
doas chmod +x /usr/bin/kget-integrator
doas curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/Conf/com.kgetdm.firefox.json -o /usr/lib/mozilla/native-messaging-hosts/com.kgetdm.firefox.json
```

## Memasang Addons

* Buka firefox.
* Klik tautan <a href="https://addons.mozilla.org/en-US/firefox/addon/kget-integration/" target="_blank">Kget Integration</a>.
* Klik "Add to Firefox"
* Selesai.
