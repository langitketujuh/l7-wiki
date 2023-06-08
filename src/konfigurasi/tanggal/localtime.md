# Localtime

## Deskripsi

Pengaturan waktu di LangitKetujuh menggunakan `UTC`. Sedangkan Windows menggunakan RTC atau yang disebut dengan `localtime`. Jika dualboot dengan windows, akan terjadi konflik pengaturan tanggal dan waktu di sistem operasi LangitKetujuh.

Untuk mengatasi konflik, yaitu dengan menyamakan semua sistem waktu `HARDWARECLOCK` menggunakan `localtime`. Solusi termudahnya dengan menjalankan perintah dibawah ini.

```
doas l7-tools --patch
```

Perintah tersebut otomatis dijalankan saat melakukan upgrade sistem, sehingga LangitKetujuh mendeteksi jika single boot atau dual boot dan melakukan pengaturan waktu sesuai jumlah sistem operasinya.
