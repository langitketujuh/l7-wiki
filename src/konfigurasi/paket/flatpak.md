# Flatpak sanboxing

## Konfigurasi flathub

```sh
flathub
```

## Memasang perangkat lunak

Pasanglah perangkat lunak yang dibutuhkan. Ketik `y` untuk melanjutkan pemasangan perangkat lunak. Perangkat lunak lainnya bisa didapatkan di [website resmi flathub](https://flathub.org/).

| Perangkat lunak   | Perintah memasang                                       |
| :---------------- | :------------------------------------------------------ |
| Discord           | `flatpak install com.discordapp.Discord`                |
| Draw.io           | `flatpak install com.jgraph.drawio.desktop`             |
| Enve              | `flatpak install io.github.maurycyliebner.enve`         |
| Figma for Linux   | `flatpak install io.github.Figma_Linux.figma_linux`     |
| Gravit Designer   | `flatpak install io.designer.GravitDesigner`            |
| Jitsi             | `flatpak install org.jitsi.jitsi-meet`                  |
| LeoCAD            | `flatpak install org.leocad.LeoCAD`                     |
| LibreSprite       | `flatpak install com.github.libresprite.LibreSprite`    |
| Mendeley Desktop  | `flatpak install com.elsevier.MendeleyDesktop`          |
| MeshLab           | `flatpak install net.meshlab.MeshLab`                   |
| Microsoft Teams   | `flatpak install com.microsoft.Teams`                   |
| Minecraft         | `flatpak install com.mojang.Minecraft`                  |
| Natron            | `flatpak install fr.natron.Natron`                      |
| NextCloud Desktop | `flatpak install com.nextcloud.desktopclient.nextcloud` |
| Olive Editor      | `flatpak install org.olivevideoeditor.Olive`            |
| Photophea         | `flatpak install com.github.vikdevelop.photopea_app`    |
| Qgis Desktop      | `flatpak install org.qgis.qgis`                         |
| Rocket.Chat       | `flatpak install chat.rocket.RocketChat`                |
| Signal Desktop    | `flatpak install org.signal.Signal`                     |
| Slack Desktop     | `flatpak install com.slack.Slack`                       |
| SparkleShare      | `flatpak install org.sparkleshare.SparkleShare`         |
| Spotify           | `flatpak install com.spotify.Client`                    |
| Steam             | `flatpak install com.valvesoftware.Steam`               |
| VScodium          | `flatpak install com.vscodium.codium`                   |
| WPS Office        | `flatpak install com.wps.Office`                        |
| WhatsApps Qt      | `flatpak install io.bit3.WhatsAppQT`                    |
| Zoom              | `flatpak install us.zoom.Zoom`                          |
| Zotero            | `flatpak install org.zotero.Zoter`                      |
| Zulip Desktop     | `flatpak install org.zulip.Zulip`                       |

## Menu tidak tampil

Perbarui l7-fish-shell dengan cara:

```
get -Sy l7-fish-shell
```

Pasang konfigurasi tambahannya.

```
cp -rfv /etc/skel/.config/fish/ ~/.config/
```

Lalu logout atau reboot.
