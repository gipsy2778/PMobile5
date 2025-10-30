import 'package:flutter/material.dart';
import 'package:tugas5/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> books = [
      'My Kisah',
      '10 Dosa Besar Soeharto',
      'Lulus SMA Mending Kuliah dulu atau Langsung Meninggal?',
      'Cara Mengubah Dosa jadi Saldo Dana',
      'Kerja TOLOL!!!',
    ];

    final List<String> descriptions = [
      'My kisah menceritakan kisah manis antara Gwehj, Mahasiswa USUR yang berwajah garang tapi berhati lembut, dan My, siswi SMA Sumizome yang anggun dan sopan. Pertemuan mereka secara kebetulan di toko kue tempat Gwehj bekerja menjadi awal dari hubungan yang hangat namun penuh rintangan. Meski sekolah mereka memiliki persaingan lama dan perbedaan status sosial yang tajam, keduanya perlahan menemukan kenyamanan dalam kehadiran satu sama lain. Dengan latar kehidupan sekolah yang penuh tawa, kesalahpahaman, dan momen-momen kecil yang berkesan, kisah ini menggambarkan cinta remaja yang tumbuh diam-diam namun tulus.',
      'Mengulas perjalanan panjang kekuasaan Presiden Soeharto, dengan fokus pada kebijakan, tindakan, dan dampak yang menimbulkan kontroversi dalam sejarah Indonesia. Melalui pendekatan kritis dan analitis, penulis berusaha menyoroti sepuluh aspek utama yang dianggap sebagai kesalahan besar selama masa pemerintahannya, mulai dari korupsi, pelanggaran HAM, pembungkaman kebebasan pers, hingga praktik nepotisme dan penyalahgunaan kekuasaan. Disajikan dengan bahasa yang lugas namun berimbang, buku ini mengajak pembaca untuk memahami sisi gelap Orde Baru, bukan untuk menghakimi semata, tetapi sebagai refleksi agar kesalahan serupa tidak terulang dalam perjalanan bangsa di masa depan.',
      'Lu Bingung apa lagi Gw',
      'Lhoo!! Emang bisa? Ya kagak lah kocak.',
      'Kuliah itu scam.',
    ];

    final List<String> images = [
      'assets/images/my.png',
      'assets/images/top10.png',
      'assets/images/baru_lulus.png',
      'assets/images/saldo_dana.png',
      'assets/images/kerja_tolol.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Buku'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          final deskripsi = descriptions[index];
          final gambar = images[index];

          return ListTile(
            leading: Image.asset(
              gambar,
              width: 50,
              height: 70,
              fit: BoxFit.cover,
            ),
            title: Text(book),
            subtitle: Text(
              deskripsi,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    judul: book,
                    deskripsi: deskripsi,
                    imageUrl: gambar,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
