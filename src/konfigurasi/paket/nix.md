# Nix paket manajer

## Deskripsi

[Nix](https://nixos.org/learn.html) merupakan cross platform fungsional paket manager dengan direktori yang unik. Keuntungan menggunakan nix adalah kaya aplikasi baik free maupun nonfree sehingga dapat dijadikan alternatif flatpak dan appimage.

Direktori sistem nix berada di `/nix/store` sehingga tidak mengganggu direktori utama linux (FHS). Meskipun nix mempunyai direktori sistem sendiri, usahakan tidak dobel aplikasi dengan xbps agar path `bin` mudah dibaca oleh sistem.

## Pemasangan nix paket manajer

Kami menyarankan untuk memperbarui semua sistem LangitKetujuh dengan `upgrade`.

* Memasang nix dan fish-shell dari repositori.

    ```
    get nix l7-fish-shell
    ```

* Perbarui pengaturan fish dengan dukungan nix.

    ```
    cp -rfv /etc/skel/.config/fish/config.fish ~/.config/
    ```

* Mengaktifkan layanan nix.

    ```
    doas rsv enable nix-daemon
    ```

## Mengaktifkan sumber kanal repositori

Ada 2 kanal yang tersedia, pilih satu kanal saja. Kami menyarankan memilih yang unstable agar mendapatkan versi aplikasi yang terbaru.

1. Kanal tak stabil (unstable). Rata-rata versi aplikasinya lebih baru, mirip seperti distribusi linux rilis bergulir.

    ```
    doas nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
    ```

2. Kanal poin rilis. Berupa nomer rilis nixos yang stabil, misalnya `22.11`.

    ```
    doas nix-channel --add https://nixos.org/channels/nixos-22.11 nixpkgs
    ```

Kemudian perbarui repositori nix.

```
nupdate
```

## Perintah dasar

| Perintah               |  Fungsi                                              |
| :--------------------- |  :-------------------------------------------------- |
| `nupdate`              |  Memperbarui basis data repositori nix.              |
| `nupgrade`             |  Memperbarui perangkat lunak dan dependensi nix.     |
| `nget <pkg>`           |  Memasang perangkat lunak dari nix.                  |
| `nsearch <pkg>`        |  Mencari perangkat lunak berdasarkan basis data nix. |
| `nremove <pkg>`        |  Menghapus perangkat lunak dari nix.                 |
| `nquery`               |  Informasi dari sistem dengan nix.                   |
| `nautoclean`           |  Menghapus cache dependensi kedaluwarsa.             |
| `nrepo`                |  Melihat daftar kanal nix.                           |

Sebagai contoh:

* Memasang inkscape: `nget inkscape`
* Menghapus inkscape: `nremove inkscape`

Terkadang beberapa paket memiliki perbedaan nama ketika dihapus. Misalnya `nget neofetch` ketika dipasang, tetapi saat menghapus paket dengan `nremove neofetch` tidak akan berhasil karena nama paketnya adalah `neofetch-unstable`.
Sehingga cara yang benar menghapus paket tersebut yaitu dengan `nremove neofetch-unstable`.

Penggunaan `nsearch` akan memerlukan penggunaan ram yang cukup besar, lebih baik mencari aplikasi nix dari situs pencarian <https://search.nixos.org> agar lebih cepat.

## Mengaktifkan paket unfree

Jika memasang aplikasi nonfree seperti discord, zoom-us, teams dan aplikasi tidak bebas lainnya memerlukan ijin dari sisi root.

```
doas mkdir /root/.config/nixpkgs
echo "{ allowUnfree = true; }" | doas tee /root/.config/nixpkgs/config.nix
```

Menggunakan direktori `root` dikarenakan pemasangan saat ini berdasarkan sisi sistem, bukan dari sisi pengguna biasa.

## Optimasi ruang disk

Nix otomatis mendeteksi berkas di /nix/store yang identik dan menggantinya dengan hardlink. Tujuannya untuk meminimalisir ukuran penggunaan disk oleh nix.

Buka berkas `/etc/nix/nix.conf` dengan kate dan tambahkan baris ini.

```
auto-optimise-store = true
```

Simpan (Ctrl+s).

Jalankan optimasi nix untuk pertama kalinya.

```
doas nix-store --optimise
```

## Menghapus kanal nix

Jika ingin menghapus kanal nix, hal ini tidak perlu dilakukan jika masih diawal pemasangan.

```
doas nix-channel --remove nixpkgs
```
