# Halaman Panduan

Kunjungi <https://wiki.langitketujuh.id>.

## Memasang dependensi

Kode sumber dokumentasi ini menggunakan [mdBook](https://rust-lang.github.io/mdBook/) sebagai generatornya.

* Memasang di langitketujuh/voidlinux:

```
get mdBook mdbook-linkcheck
```

* Memasang di Archlinux atau manjaro

```
doas pacman -Syy mdbook
```

* Memasang via cargo (hal ini mengkompil dari source code, tentu lumayan lama prosesnya)

```
export PATH="$PATH:~/.cargo/bin"
cargo install mdbook mdbook-linkcheck
```

## Kloning kode sumber

```
git clone --depth 1 https://gitlab.com/langitketujuh/l7-docs.git
cd docs
```

## Menjalankan secara realtime

```
mdbook serve
```

## Membangun html

```
mdbook build
```

Hasil render berada di `book/html/`.

## Template mdbook starter

Template mdbook starter tersedia di [repositori gitlab](https://gitlab.com/langitketujuh/mdbook.git). Demontrasinya <https://mdbook.langitketujuh.id>
