# Partisi linux swap

Sistem tradisional linux swap dengan membuat partisi khusus swap sangat tidak disarankan. Alasannya sebagai berikut:

* Memperlambat kinerja Hardisk
* Memperpendek umur SSD
* Mengurangi ruang disk

Dengan beberapa alasan tersebut Anda tidak seharusnya membuat partisi linux swap. Terlebih lagi untuk LangitKetujuh diatas versi `20210616` sudah menggunakan [zram](zram.md) untuk manajemen swap yang lebih baik.
