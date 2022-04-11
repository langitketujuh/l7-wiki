# Halaman Panduan

Kunjungi <https://panduan.langitketujuh.id>.

## Memasang dependensi

Kode sumber dokumentasi ini menggunakan [mdBook](https://rust-lang.github.io/mdBook/) sebagai generatornya.

* Memasang di langitketujuh/voidlinux:

```sh
doas xbps-install -Sy mdBook mdbook-linkcheck
```

* Memasang di Archlinux atau manjaro

```sh
doas pacman -Syy mdbook
```

* Memasang via cargo (hal ini mengkompil dari source code, tentu lumayan lama prosesnya)

```sh
export PATH="$PATH:~/.cargo/bin"
cargo install mdbook mdbook-linkcheck
```

## Kloning kode sumber

```sh
git clone --depth 1 https://gitlab.com/langitketujuh/l7-docs.git
cd docs
```

## Menjalankan secara realtime

```sh
mdbook serve
```

## Membangun html

```sh
mdbook build
```

Hasil render berada di `book/html/`.

## Template mdbook starter

Template mdbook starter tersedia di [repositori gitlab](https://gitlab.com/langitketujuh/mdbook.git). Demontrasinya <https://mdbook.langitketujuh.id>
