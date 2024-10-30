import 'package:flutter/material.dart';
import 'package:projek_bps/menuberita/news_detail01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuBerita(),
    );
  }
}

class MenuBerita extends StatelessWidget {
  const MenuBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Berita', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi kembali di sini
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cari berita statistik di sini',
                  hintStyle: const TextStyle(
                      color: Colors.blue), // warna teks placeholder
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ), // icon pencarian
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFC9E1F3),
                ),
              ),
              const SizedBox(height: 16.0),
              // News list
              NewsCard(
                title: 'Pelatihan Petugas VHTL dan VDTW Tahun 2024',
                date: '7 Juni 2024',
                description:
                    'Pada hari Kamis, 7 Juni 2024 BPS Kabupaten Banyuwangi menyelenggarakan pelatihan petugas VHTL (Survei Hotel Tahunan), Wisnus dan VDTW ...',
                image: 'asset/foto/image_berita1.jpg',
                backgroundColor: const Color(0xFFC9E1F3),
              ),
              const SizedBox(height: 16.0),
              NewsCard(
                title:
                    'Pelatihan Petugas Survei Ekonomi Pertanian (SEP) UTP 2024',
                date: '29 Mei 2024',
                description:
                    'Badan Pusat Statistik (BPS) akan menggelar Survei Ekonomi Pertanian (SEP) 2024 pada Juni 2024. SEP 2024 merupakan lanjutan dari Sensus ...',
                image: 'asset/foto/image_berita2.jpg',
                backgroundColor: const Color(0xFFC9E1F3),
              ),
              const SizedBox(height: 16.0),
              // Add more NewsCard widgets as needed
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.library_books),
      //       label: 'Publikasi',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.article),
      //       label: 'Berita',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Beranda',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bar_chart),
      //       label: 'Data',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.public),
      //       label: 'Berita Resmi Statistik',
      //     ),
      //   ],
      // selectedItemColor: Colors.orangeAccent,
      // unselectedItemColor: Colors.grey,
      // type: BottomNavigationBarType.fixed,
      // onTap: (index) {
      // Tambahkan navigasi fungsi di sini
      // },
      // )
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String image;
  final Color backgroundColor;

  const NewsCard({
    required this.title,
    required this.date,
    required this.description,
    required this.image,
    this.backgroundColor = Colors.blue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetail01(
              title: title,
              description: description,
              image: image,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4.0,
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8.0),
              Image.asset(image), // Ganti dengan path gambar Anda
            ],
          ),
        ),
      ),
    );
  }
}
