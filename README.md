# Halaman Panduan

Kunjungi <https://panduan.langitketujuh.id>.

## Memasang depedensi

Kode sumber dokumentasi ini menggunakan [mdBook](https://rust-lang.github.io/mdBook/) sebagai generatornya.

* Memasang di langitketujuh/voidlinux:

```bash
sudo xbps-install -S mdBook mdbook-linkcheck
```

* Memasang di Archlinux atau manjaro

```bash
sudo pacman -Syy mdbook
```

* Memasang via cargo (hal ini mengkompil dari source code, tentu lumayan lama prosesnya)

```bash
export PATH="$PATH:~/.cargo/bin"
cargo install mdbook mdbook-linkcheck
```

## Kloning kode sumber

```bash
git clone --depth 1 https://gitlab.com/langitketujuh/book/docs.git
cd docs
```

## Menjalankan secara realtime

```bash
mdbook serve
```

## Membangun html

```bash
mdbook build
```

Hasil render berada di `book/html/`.

## Template mdbook starter

Template mdbook starter bisa Anda lihat di [template mdbook](https://gitlab.com/langitketujuh/book/mdbook.git). Demontrasinya <https://mdbook.langitketujuh.id>
