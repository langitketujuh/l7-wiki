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

## Menu perangkat lunak tidak tampil

Hal ini disebabkan karena LangitKetujuh menggunakan fish-shell sebagai shell bawaan. Sedangkan Flatpak belum mendukung untuk fish-shell, sehingga `$XDG_DATA_DIR` tidak terdeteksi oleh flatpak.

- Solusi pertama yang kami sarankan yaitu dengan menyalin berkas desktop`<Perangkat lunak>.desktops` dari sini:

  ```
  /var/lib/flatpak/app/<Perangkat lunak>/current/active/export/share/applications/
  ```

  Kemudian tempelkan ke `~/.local/share/applications/`. Jika menggunakan file manager, maka harus menekan `ctrl+h` untuk menampilkan direktori `.local` di halaman utama pengguna (Home).

- Solusi kedua bisa mengganti fish-shell ke bash secara permanen, tetapi cara ini tidak kami sarankan karena [fish-shell](../../konfigurasi/shell/fish.md) memiliki fitur yang lebih baik dengan autokomplitnya.

  ```sh
  doas chsh -s /usr/bin/bash
  ```
