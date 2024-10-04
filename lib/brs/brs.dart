import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projek_bps/brs/brs.dart';
import 'package:projek_bps/brs/detail_brs.dart';
import 'package:projek_bps/splashscreen/splashscreen.dart';

class HomeUtama extends StatefulWidget {
  @override
  State<HomeUtama> createState() => _HomeUtamaState();
}

class _HomeUtamaState extends State<HomeUtama> {
  int i = 2;
  List<Widget> widgets = [
    Berita(),
    Beranda(),
    Tabel(),
    BRSScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[i],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: i,
          onTap: (value) {
            setState(() {
              i = value;
            });
          },
          selectedItemColor: Color(0xFF5BB4E1), //Warna text saat dipilih
          unselectedItemColor: Colors.black, // warna text saat tidak dipilih
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/logo/publikasi.png',
                  height: 27,
                  width: 27,
                  color: Color(0xFF5BB4E1),
                ),
                label: "Publikasi"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/logo/berita.png',
                  height: 27,
                  width: 27,
                  color: Color(0xFF5BB4E1),
                ),
                label: "Berita"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/logo/beranda.png',
                  height: 27,
                  width: 27,
                ),
                label: "Beranda"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/logo/data.png',
                  height: 27,
                  width: 27,
                  color: Color(0xFF5BB4E1),
                ),
                label: "Tabel"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/logo/brs.png',
                  height: 27,
                  width: 27,
                  color: Color(0xFF5BB4E1),
                ),
                label: "Berita Resmi Statistik"),
          ]),
    );
  }
}

class BRSScreen extends StatefulWidget {
  @override
  _BRSScreenState createState() => _BRSScreenState();
}

class _BRSScreenState extends State<BRSScreen> {
  // Variable untuk menyimpan tab yang dipilih
  String selectedTab = "Semua";
  String searchText = ""; // Variabel untuk menyimpan input pencarian

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5BB4E1),
        title: Text(
          'Berita Resmi Statistik',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3),
            // Pencarian
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFFC9E1F3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Color(0xFF2196F3)),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cari judul berita disini',
                          hintStyle: TextStyle(color: Colors.blue),
                        ),
                        onChanged: (value) {
                          setState(() {
                            searchText = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            // Bagian tab filter (Terbaru, Populer, Utama)
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tab Terbaru
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = "Semua";
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == "Semua"
                          ? Colors.blue.shade200
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Semua',
                      style: TextStyle(
                        fontWeight: selectedTab == "Semua"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 40),

                // Tab Populer
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = "Populer";
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedTab == "Populer"
                          ? Colors.blue.shade200
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Populer',
                      style: TextStyle(
                        fontWeight: selectedTab == "Populer"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title:
                        'Luas Panen dan Produksi Padi di Kabupaten Banyuwangi 2020',
                    releaseDate: '12 April 2021',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title:
                        'Perkembangan Indeks Harga Konsumen/Inflasi Banyuwangi Bulan Juli 2024',
                    releaseDate: '01 Agustus 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title:
                        'Perkembangan Jasa Akomodasi Kabupaten Banyuwangi Juni 2024',
                    releaseDate: '01 Agustus 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title: 'Profil Kemiskinan Kabupaten Banyuwangi Maret 2024',
                    releaseDate: '01 Agustus 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title: 'Indeks Pembangunan Manusia (IPM) Tahun 2021',
                    releaseDate: '06 Desember 2021',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title: 'Hasil Sensus Penduduk Kabupaten Banyuwangi 2020',
                    releaseDate: '22 Agustus 2021',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  brsCard(
                    imagePath: 'asset/foto/beritaresmi.jpg',
                    title:
                        'Pertumbuhan Ekonomi Kabupaten Banyuwangi Tahun 2023',
                    releaseDate: '28 Februari 2024',
                    context: context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget brsCard({
  required String imagePath,
  required String title,
  required String releaseDate,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailBRSPage()),
      );
    },
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFC9E1F3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Gambar publikasi
          Container(
            width: 100,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),

          // Detail publikasi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2787CF),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  releaseDate,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF2787CF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class Berita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Berita"),
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Beranda"),
      ),
    );
  }
}

class Tabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Tabel"),
      ),
    );
  }
}

class BeritaResmiStatistik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Berita Resmi Statistik"),
      ),
    );
  }
}
