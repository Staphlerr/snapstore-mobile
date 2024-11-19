# Snapstore 🛍️

Nama: Belva Ghani Abhinaya

Kelas: PBP A

NPM: 2306203526

<details>
<summary><b>Tugas 7</b></summary>
<br>

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- Stateless Widget: Widget tanpa perubahan state. UI bersifat statis, cocok untuk elemen yang tidak berubah seperti teks atau ikon.
- Stateful Widget: Widget yang bisa berubah karena interaksi atau data yang berubah. Memiliki state internal, cocok untuk UI dinamis seperti tombol atau form. <br>
Perbedaan: Stateless tidak berubah setelah dibuat, sedangkan Stateful bisa berubah dengan memodifikasi state-nya.<br>

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Pada proyek ini, beberapa widget yang digunakan adalah:

- Scaffold: Struktur dasar halaman yang menyediakan layout standar untuk aplikasi, seperti AppBar di bagian atas dan body di tengah.
- AppBar: Digunakan untuk menampilkan judul aplikasi di bagian atas layar.
- Padding: Widget untuk memberikan jarak atau margin di sekitar widget lain.
- Column: Menyusun widget secara vertikal (dari atas ke bawah).
- Row: Menyusun widget secara horizontal (dari kiri ke kanan).
- InfoCard: Widget khusus yang dibuat untuk menampilkan informasi berupa judul dan konten, seperti NPM, nama, dan kelas.
- GridView: Menyusun widget dalam bentuk grid atau tabel, memungkinkan pembuatan layout dengan beberapa kolom.
- Material: Memberikan tema material pada widget, termasuk efek seperti bayangan dan ketinggian (elevation).
- InkWell: Widget yang merespons interaksi pengguna, seperti sentuhan atau klik, dan memberikan efek visual seperti ripple.
- Icon: Menampilkan ikon dari kumpulan ikon bawaan Flutter.
- Text: Menampilkan teks di layar.<br>

### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` digunakan untuk memberi tahu Flutter bahwa ada perubahan dalam state internal suatu Stateful Widget dan harus memperbarui tampilan widget tersebut. Ketika `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` dari widget untuk memperbarui UI berdasarkan perubahan data. Variabel yang bisa berubah melalui `setState()` adalah variabel yang mempengaruhi tampilan UI, seperti teks, status tombol, atau data input.<br>

### Jelaskan perbedaan antara `const` dengan `final`.

`const` dan `final` digunakan untuk mendeklarasikan variabel yang nilainya tidak bisa diubah setelah diinisialisasi, tetapi perbedaannya adalah `const` mengharuskan nilai diketahui pada waktu kompilasi dan bersifat immutable, sementara `final` lebih fleksibel karena nilainya dapat diinisialisasi pada runtime, meskipun tetap tidak dapat diubah setelah ditetapkan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Buat proyek Flutter baru dengan nama `Snapstore` dengan perintah `flutter create snapstore`, lalu masuk ke direktori tersebut dengan `cd snapstore`.
2. Jalankan aplikasi Flutter menggunakan `flutter run` atau jalankan di Google Chrome dengan perintah `flutter run -d chrome`.
3. Atur tema warna di `main.dart` dengan menggunakan `ColorScheme.fromSwatch` dan ubah warna menjadi kombinasi biru-ijo, misalnya `Colors.teal` untuk primary dan `Colors.tealAccent` untuk secondary.
4. Pindahkan widget `MyHomePage` dari `main.dart` ke file baru `menu.dart` di dalam folder `lib` dengan menambahkan `import 'package:snapstore/menu.dart';` di `main.dart`.
5. Deklarasikan variabel `npm`, `name`, dan `className` dalam `MyHomePage` di `menu.dart` untuk menampilkan NPM, nama, dan kelas.
6. Buat `InfoCard` di `menu.dart` untuk menampilkan informasi NPM, nama, dan kelas dalam bentuk kartu sederhana.
7. Tambahkan list `ItemHomepage` di `menu.dart` yang berisi tiga tombol: "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
8. Implementasikan `ItemCard` di `menu.dart` untuk menampilkan tombol-tombol tersebut dan munculkan `SnackBar` saat tombol ditekan, menampilkan pesan sesuai tombol yang ditekan.
9. Tampilkan `InfoCard` dan `ItemCard` di `MyHomePage` dengan menggunakan `GridView` dan `Row` untuk layout tombol dan informasi.
10. Selesai.

</details>

<details>
<summary><b>Tugas 8</b></summary>
<br>

### Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

`const` di Flutter digunakan untuk membuat objek yang nilainya tetap dan diketahui saat compile time. Penggunaannya sangat penting untuk optimasi performa karena widget const hanya dibuat sekali dan dapat digunakan kembali, menghemat memori. `const` sebaiknya digunakan untuk static widget seperti Text atau Icon, tetapi hindari untuk widget yang membutuhkan data dinamis atau bergantung pada state.

### Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah widget layout di Flutter yang digunakan untuk mengatur widget anak secara vertikal dan horizontal.
- `Column`: Mengatur widget anak secara vertikal dari atas ke bawah. Cocok digunakan ketika Anda ingin menampilkan elemen-elemen secara berurutan dari atas ke bawah. Contoh implementasi:

```dart
child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Item: $_name'),
    Text('Amount: $_amount'), 
    Text('Description: $_description'),
    ],
),
```
Pada kode berikut, teks untuk item, amount, dan description tertulis secara vertikal dari atas ke bawah

- `Row`: Mengatur widget anak secara horizontal dari kiri ke kanan. Cocok digunakan ketika Anda ingin menampilkan elemen-elemen secara berurutan dari kiri ke kanan. Contoh implementasi:

```dart
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
    ],
),
```
Pada kode berikut, infocard untuk npm, nama, dan kelas diatur secara horizontal dari kiri ke kanan

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form, elemen input yang digunakan adalah:

- TextFormField untuk input teks name, description, dan amount.

Elemen input Flutter lain yang tidak digunakan pada tugas ini adalah:

- Checkbox: Untuk input boolean, memungkinkan pengguna memilih atau tidak memilih opsi.
- Radio: Untuk memilih satu dari beberapa opsi yang saling eksklusif.
- DropdownButton: Untuk memilih satu dari beberapa opsi dalam bentuk dropdown.
- Slider: Untuk memilih nilai dalam rentang tertentu dengan menggeser kontrol.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Tema pada aplikasi diatur menggunakan Theme.of(context) untuk menjaga konsistensi visual. Kode menggunakan colorScheme.primary untuk warna AppBar dan tombol. Pengaturan tema global bisa dilakukan di MaterialApp menggunakan ThemeData untuk mengatur warna, typography, dan aspek visual lainnya.

Berikut adalah tema yang diimplementasikan pada tugas ini:
```dart
// Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
backgroundColor: Theme.of(context).colorScheme.primary,
```

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi pada aplikasi menggunakan Navigator dengan MaterialPageRoute untuk perpindahan antar halaman. Drawer digunakan sebagai menu navigasi samping. Navigator.push() dipakai untuk membuka halaman baru, sedangkan Navigator.pushReplacement() untuk mengganti halaman saat ini. Ini memungkinkan pengguna berpindah antara halaman utama dan form penambahan item dengan mudah.

</details>

<details open>
<summary><b>Tugas 9</b></summary>
<br>

### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Model diperlukan untuk mengelola dan memproses data JSON agar lebih terstruktur dan mudah digunakan dalam aplikasi. Dengan model, data yang diambil dari API dalam bentuk JSON dapat diubah menjadi objek yang dapat dipahami dan dikelola oleh aplikasi. Jika kita tidak membuat model, kita harus melakukan parsing data JSON secara manual, yang bisa menyebabkan kesalahan karena tipe data yang tidak cocok atau penulisan key yang salah. Selain itu, tanpa model, kode akan menjadi sulit dipelihara dan rawan bug.

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library http dalam tugas ini berfungsi untuk:
1. Mengirim dan Menerima Permintaan HTTP: Memungkinkan Flutter berkomunikasi dengan server Django menggunakan permintaan GET dan POST.
2. Mengolah Respons JSON: Mempermudah parsing data JSON dari server, yang kemudian dikonversi menjadi model Flutter.
3. Mendukung Autentikasi: Dapat menambahkan headers untuk autentikasi, seperti token, memastikan akses aman ke data.<br>

Dengan http, Flutter dapat terhubung dan berinteraksi dengan server Django secara real-time untuk mengambil dan menampilkan data.

### Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` adalah kelas khusus yang menangani request yang memerlukan cookie atau token otentikasi. Dalam konteks ini, `CookieRequest` dapat digunakan untuk mengelola sesi pengguna, memastikan setiap permintaan yang membutuhkan otentikasi dapat diteruskan bersama dengan token yang sesuai. `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter agar semua permintaan HTTP yang membutuhkan autentikasi dapat menggunakan instance yang sama, memastikan session state tetap konsisten di seluruh aplikasi.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

1. Input Pengguna: Pengguna mengisi data di form Flutter (misalnya, form login atau registrasi).
2. Kirim Data ke Server: Data ini dikirim ke server Django melalui HTTP request (biasanya POST) menggunakan library http.
3. Proses Server: Django memproses data dan mengirim respons dalam bentuk JSON.
4. Parsing Data di Flutter: Flutter menerima respons JSON dan mengubahnya menjadi model data.
5. Tampilkan di UI: Data yang sudah dikonversi ditampilkan pada antarmuka pengguna di Flutter menggunakan widget seperti ListView atau Text.

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

- **Login**: Pengguna memasukkan data login pada Flutter. Data dikirim ke Django melalui endpoint login. Django memverifikasi data dan, jika sesuai, mengembalikan token autentikasi. Token ini disimpan oleh CookieRequest.
- **Register**: Data pendaftaran pengguna dikirim dari Flutter ke endpoint register di Django. Django menyimpan data pengguna baru dan mengembalikan response berhasil atau gagal. Jika berhasil, pengguna dapat login.
- **Logout**: Untuk logout, Flutter mengirim permintaan ke endpoint logout di Django. Django menghapus token sesi pengguna, menutup sesi, dan mengirim response ke Flutter untuk mengarahkan pengguna kembali ke halaman login atau beranda.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

1. Pastikan server Django berjalan dengan baik di localhost atau platform yang aman (HTTPS).
2. Buat endpoint register di Django untuk registrasi pengguna. Di Flutter, buat halaman registrasi yang mengirim data ke Django menggunakan `pbp_django_auth`.
3. Buat endpoint login di Django untuk autentikasi. Di Flutter, buat halaman login yang mengirimkan kredensial dan menangani respons login.
4. Gunakan Quicktype untuk mengonversi data JSON dari Django menjadi model Dart di Flutter.
5. Gunakan package HTTP di Flutter untuk mengambil data dari Django dan tampilkan dalam aplikasi.
6. Buat halaman detail item di Flutter dan pastikan Django hanya mengirimkan item yang terasosiasi dengan pengguna yang login.
7. Buat endpoint logout di Django dan tambahkan tombol logout di Flutter yang mengirim request ke Django untuk logout.
8. Selesai

</details>