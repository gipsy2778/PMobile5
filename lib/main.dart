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
      'Babi Ngesot: Datang Tak Diundang, Pulang Tak Berkutang',
      'Cado-Cado: Catatan Dodol Calon Dokter',
      'Nanti Kita Cerita Tentang Hari Ini',
    ];

    final List<String> descriptions = [
      'Meskipun letaknya berdekatan, SMA Negeri Chidori dan Akademi Swasta Kikyo khusus perempuan seolah berada di dua dunia yang berbeda. Akademi Kikyo dikenal memiliki reputasi yang sempurna dan mayoritas siswanya berasal dari keluarga kaya, sementara Chidori dipenuhi oleh murid-murid nakal yang dianggap bodoh. Seluruh siswa Kikyo menyimpan kebencian mendalam terhadap tetangga mereka dari Chidori. Rintarou Tsumugi, seorang siswa Chidori berusia enam belas tahun, sering dijauhi orang karena wajahnya yang terlihat menyeramkan. Namun, Rintarou tidak terlalu mempedulikannya, karena ia sudah merasa cukup dengan teman-teman dekatnya. Meski begitu, ada satu hal yang belum ia ceritakan kepada mereka: sesekali, ia membantu di toko kue milik keluarganya. Suatu hari saat bekerja, Rintarou melihat seorang pelanggan duduk di meja, namun gadis itu pergi sebelum ia sempat berbicara dengannya. Keesokan harinya, ia menerima permintaan maaf dari gadis tersebut, Kaoruko Waguri, yang menjelaskan bahwa ia bukan kabur karena penampilan Rintarou, dan justru percaya bahwa Rintarou adalah orang yang baik hati. Meski Rintarou belum terbiasa dengan kepribadian cerah Kaoruko, ia mulai menantikan persahabatan dengan gadis itu. Sayangnya, ada satu rintangan besar yang menghadang: Kaoruko adalah siswa Kikyo!',
      '10 Dosa Besar Soeharto" merupakan sebuah karya yang mengupas kepemimpinan mantan Presiden Indonesia, Soeharto. Buku ini menyajikan analisis kritis terhadap periode panjang pemerintahannya, mengidentifikasi dan mengulas sepuluh isu utama yang dikaitkan dengan kebijakan, politik, dan dampaknya terhadap masyarakat.',
      'Babi Ngesot: Datang Tak Diundang, Pulang Tak Berkutang adalah kumpulan cerita pendek pengalaman pribadi Raditya Dika, penulis Indonesia terbodoh saat ini. Buku ini berisi tujuh belas cerita aneh-tapi-nyata Raditya, termasuk kalang kabut digencet kakak kelas, dihantuin setan rambut poni, sampai perjuangan menyelamatkan keteknya yang sedang "sakit". Buku ini diterbitkan pada tahun 2008 dan berisi 240 halaman. Raditya Dika, yang juga dikenal sebagai penulis Kambingjantan: Catatan Harian Pelajar Bodoh dan Cinta Brontosaurus, kini bekerja sebagai direktur dan editor-in-chief Bukune Publishing House.',
      'Dalam buku Cado-Cado : Catatan Dodol Calon Dokter, kamu akan menyimak 14 pengalaman lucu Riva sewaktu menjalani koass atau pendidikan lanjut mahasiswa kedokteran dulu. Dari mulai dijebloskan ke ruangan penuh orang sakit jiwa sampai gemeteran merawat pasien waria.',
      'Nanti Kita Cerita Tentang Hari Ini adalah novel yang ditulis oleh Marchella FP, yang mengisahkan tentang seorang Wanita bernama Awan, yang berusia 27 tahun dan seorang ibu. Cerita ini menggali tema masa depan dan konflik dalam keluarga yang terpendam, yang dapat merusak keharmonisan keluarga. Buku ini sangat direkomendasikan bagi mereka yang merasa gelisah atau sedih, karena dapat memberikan kata-kata penyemangat dan penenang emosi. co Gramedia.com +3',
    ];

    final List<String> images = [
      'assets/images/my.png',
      'assets/images/top10.png',
      'assets/images/b2.png',
      'assets/images/cado_cado.png',
      'assets/images/cerita.png',
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
