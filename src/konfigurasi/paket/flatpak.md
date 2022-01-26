# Flatpak Sanboxing

## Konfigurasi Flathub

```bash
flathub
```
Atau dengan perintah ini

```bash
flatpak remote-add --if-not-exists flathub \
https://dl.flathub.org/repo/flathub.flatpakrepo
```

## Memasang perangkat lunak

Pasanglah perangkat lunak yang Anda butuhkan. Ketik `y` untuk melanjutkan pemasangan aplikasi. Aplikasi lainnya bisa Anda dapatkan di <a href="https://flathub.org/" target="_blank">website resmi flathub</a>.

| Perangkat lunak   | Perintah memasang                                               |
| :---------------- | :-------------------------------------------------------------- |
| Discord           | `flatpak install flathub com.discordapp.Discord`                |
| Draw.io           | `flatpak install flathub com.jgraph.drawio.desktop`             |
| Enve              | `flatpak install flathub io.github.maurycyliebner.enve`         |
| Figma for Linux   | `flatpak install flathub io.github.Figma_Linux.figma_linux`     |
| Gravit Designer   | `flatpak install flathub io.designer.GravitDesigner`            |
| Jitsi             | `flatpak install flathub org.jitsi.jitsi-meet`                  |
| LeoCAD            | `flatpak install flathub org.leocad.LeoCAD`                     |
| Mendeley Desktop  | `flatpak install flathub com.elsevier.MendeleyDesktop`          |
| MeshLab           | `flatpak install flathub net.meshlab.MeshLab`                   |
| Microsoft Teams   | `flatpak install flathub com.microsoft.Teams`                   |
| Minecraft         | `flatpak install flathub com.mojang.Minecraft`                  |
| Natron            | `flatpak install flathub fr.natron.Natron`                      |
| NextCloud Desktop | `flatpak install flathub com.nextcloud.desktopclient.nextcloud` |
| Olive Editor      | `flatpak install flathub org.olivevideoeditor.Olive`            |
| Photophea         | `flatpak install flathub com.github.vikdevelop.photopea_app`    |
| Qgis Desktop      | `flatpak install flathub org.qgis.qgis`                         |
| Rocket.Chat       | `flatpak install flathub chat.rocket.RocketChat`                |
| Signal Desktop    | `flatpak install flathub org.signal.Signal`                     |
| Slack Desktop     | `flatpak install flathub com.slack.Slack`                       |
| SparkleShare      | `flatpak install flathub org.sparkleshare.SparkleShare`         |
| Spotify           | `flatpak install flathub com.spotify.Client`                    |
| Steam             | `flatpak install flathub com.valvesoftware.Steam`               |
| VScodium          | `flatpak install flathub com.vscodium.codium`                   |
| WPS Office        | `flatpak install flathub com.wps.Office`                        |
| WhatsApps QT      | `flatpak install flathub io.bit3.WhatsAppQT`                    |
| Zoom              | `flatpak install flathub us.zoom.Zoom`                          |
| Zotero            | `flatpak install flathub org.zotero.Zoter`                      |
| Zulip Desktop     | `flatpak install flathub org.zulip.Zulip`                       |

## Menu aplikasi tidak tampil

Hal ini disebabkan karena LangitKetujuh menggunakan fish-shell sebagai shell bawaan. Sedangkan Flatpak belum mendukung untuk fish-shell, sehingga `$XDG_DATA_DIR` tidak terdeteksi oleh flatpak.

- Solusi pertama yang kami sarankan yaitu dengan menyalin berkas desktop`<Aplikasi>.desktops` dari sini:

  ```
  /var/lib/flatpak/app/<Aplikasi>/current/active/export/share/applications/
  ```

  Kemudian tempelkan ke `~/.local/share/applications/`.

- Solusi kedua bisa mengganti fish-shell ke bash secara permanen, tetapi cara ini tidak kami sarankan karena [fish-shell](../../konfigurasi/shell/fish.md) memiliki fitur yang lebih baik dengan autokomplitnya.

  ```
  doas chsh -s /usr/bin/bash
  ```
