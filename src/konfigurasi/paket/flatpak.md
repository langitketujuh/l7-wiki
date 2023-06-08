# Flatpak sanboxing

[Flatpak](https://www.flatpak.org/) merupakan salah satu independen proyek paket manager universal yang dapat digunakan oleh hampir berbagai distribusi linux.

## Perintah dasar

Perintah dasar `flatpak` dibawah ini sudah dikonfigurasi lebih mudah dengan fungsi fish-shell.

| Perintah              | Contoh                | Fungsi                                                  |
| :-------------------- | :-------------------- | :------------------------------------------------------ |
| `fupgrade`            |                       | Memperbarui perangkat lunak dari repo flathub.          |
| `fget <pkg>`          | `fget gimp`           | Memasang perangkat lunak dari flatpak.                  |
| `fsearch <pkg>`       | `fsearch gimp`        | Mencari perangkat lunak berdasarkan basis data flathub. |
| `fremove <pkg>`       | `fremove gimp`        | Menghapus perangkat lunak dari flatpak.                 |

## Memasang perangkat lunak

Pasanglah perangkat lunak yang dibutuhkan. Ketik `y` atau langsung `enter` untuk melanjutkan pemasangan perangkat lunak. Jika ada pilihan jenis perangkat lunak pilih nomer berdasarkan perangkat lunak yang diinginkan, pilih nomer `[0-9]`.

| Perangkat lunak   | Perintah memasang                                               |
| :---------------- | :--------------------- |
| Blender           | `fget blender`         |
| Brave browser     | `fget brave`           |
| Discord           | `fget discord`         |
| Draw.io           | `fget drawio`          |
| Enve              | `fget enve`            |
| Figma for Linux   | `fget figma`           |
| Gravit Designer   | `fget gravitdesigner`  |
| Inkscape          | `fget inkscape`        |
| Jitsi             | `fget jitsi`           |
| LeoCAD            | `fget leocad`          |
| LibreSprite       | `fget libresprite`     |
| Mendeley Desktop  | `fget mendeleydesktop` |
| MeshLab           | `fget meshlab`         |
| Microsoft Teams   | `fget teams`           |
| Minecraft         | `fget minecraft`       |
| Natron            | `fget natron`          |
| NextCloud Desktop | `fget nextcloud`       |
| Olive Editor      | `fget olive`           |
| Only Office       | `fget onlyoffice`      |
| Photophea         | `fget photopea_app`    |
| Qgis Desktop      | `fget qgis`            |
| Rocket.Chat       | `fget rocketchat`      |
| Signal Desktop    | `fget signal`          |
| Slack Desktop     | `fget slack`           |
| SparkleShare      | `fget sparkleshare`    |
| Spotify           | `fget spotify`         |
| Steam             | `fget steam`           |
| VScodium          | `fget codium`          |
| WPS Office        | `fget wps`             |
| WhatsApps QT      | `fget whatsappqt`      |
| Zoom              | `fget zoom`            |
| Zotero            | `fget zotero`          |
| Zulip Desktop     | `fget zulip`           |

Perangkat lunak lainnya bisa didapatkan di [website resmi flathub](https://flathub.org/).

## Menu tidak tampil

Solusinya dengan memasang kembali konfigurasi fish-shell yang terbaru. Panduannya di [halaman ini](../shell/fish.html#memasang-ulang-konfigurasi).
