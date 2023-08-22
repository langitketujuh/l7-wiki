# Server repositori

Lokasi server tier 1 yang digunakan saat ini yaitu [repo-default.voidlinux.org](https://repo-default.voidlinux.org), begitu pula dengan voidlinux.

Daftar repositori LangitKetujuh OS untuk `x86_64`:

- <https://repo-default.voidlinux.org/current>
- <https://repo-default.voidlinux.org/current/nonfree>
- <https://repo-fatih.langitketujuh.id/current>

Jika menggunakan arsitektur `x86_64-musl`:

- <https://repo-default.voidlinux.org/current/musl>
- <https://repo-default.voidlinux.org/current/musl/nonfree>
- <https://repo-fatih.langitketujuh.id/current/musl>

## Cek alamat repositori

Cara mengecek daftar repo dapat dilakukan dengan `repo`. Keluaran yang dihasilkan akan terlihat seperti dibawah ini.

```
repo
```

```
13673 https://repo-default.voidlinux.org/current (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
   59 https://repo-default.voidlinux.org/current/nonfree (RSA signed)
      Signed-by: Void Linux
      4096 60:ae:0c:d6:f0:95:17:80:bc:93:46:7a:89:af:a3:2d
  108 https://repo-fatih.langitketujuh.id/current (RSA signed)
      Signed-by: LangitKetujuh Linux
      4096 10:33:f2:1f:6f:9d:f8:0a:66:63:48:2b:de:83:50:b1
```

## Menambah repositori

Repositori tambahan perlu dipasang jika memerlukan paket yang tidak ada di repo utama. Misalnya, memasang driver nvidia memerlukan `void-repo-nonfree` dan wine-32bit memerlukan `void-repo-multilib`.

| Nama repositori       | Cara memasang                     |
| :-------------------- | :-------------------------------- |
| Void Nonfree          | `get void-repo-nonfree`           |
| Void Multilib         | `get void-repo-multilib`          |
| Void Multilib Nonfree | `get void-repo-multilib-nonfree`  |
| Void Debug            | `get void-repo-debug`             |

Lalu perbarui repodata.

```
update
```

## Mengganti repositori

Mengganti alamat repositori bertujuan untuk mengurangi latensi (waktu yang ditempuh),
sehingga mempercepat kecepatan server. Hal ini dikarenakan lokasinya yang dekat dengan lokasi pengguna.

Voidlinux telah menyediakan `xmirror` untuk mengganti dengan mudah alamat server sesuai bagian negara terdekat. 
Caranya sebagai berikut:

* Pasang xmirror.

   ```
   get xmirror
   ```

* Jalankan xmirror dan masukkan kata sandi.

   ```
   doas xmirror
   ```

* Muncul pesan pembuka, pilih __OK__ dengan menekan __Enter__.
* Pilih bagian negara sesuai lokasi. Kami menyarankan untuk menggunakan Repositori dari __Fastly__ yang dikelola langsung oleh tim voidlinux. Pilih __World__ > __Fastly Global CDN__.
* `Do you want to continue?`, Pilih __Yes__.
* Jika berhasil, akan mendapatkan pesan `Mirror successfully changed to https://repo-fastly.voidlinux.org/!`.
* Selesai.

Setelah memilih __Fastly Global CDN__ proses pembaruan sistem secara otomatis mengadopsi dari multi-server berbagai negara sesuai [peta jaringan](https://www.fastly.com/network-map).
Seperti Kuala lumpur, Singapura dan Osaka.
