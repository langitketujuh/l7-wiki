---
title: Kget Firefox Addons
weight: "10"

---

Plugin Kget untuk terintegrasi dengan Firefox browser.

{{< toc >}}

## Memasang Kget Integrator

```shell

sudo curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/kget-integrator -o /usr/bin/kget-integrator

sudo chmod +x /usr/bin/kget-integrator

sudo curl -s https://raw.githubusercontent.com/NicolasGuilloux/KGet-Integrator/master/Conf/com.kgetdm.firefox.json -o /usr/lib/mozilla/native-messaging-hosts/com.kgetdm.firefox.json

```

## Memasang Addons

* Buka firefox
* Klik tautan ini. https://addons.mozilla.org/en-US/firefox/addon/kget-integration/
* Klik "Add to Firefox"
* Selesai.
