import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projek_bps/beranda/beranda.dart';
import 'package:projek_bps/publikasi/detail.dart';
import 'package:projek_bps/publikasi/publikasi.dart';
import 'package:projek_bps/splashscreen/splashscreen.dart';

class HomeUtama extends StatefulWidget{
  @override
  State<HomeUtama> createState() => _HomeUtamaState();
}

class _HomeUtamaState extends State<HomeUtama> {
  int i = 2;
  List<Widget> widgets = [
    Publikasi(), Berita(), Beranda() , Tabel(), BeritaResmiStatistik(),
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
            icon: Image.asset('asset/logo/publikasi.png', height: 27, width: 27, color: Color(0xFF5BB4E1),),
            label:  "Publikasi"
          ),        
          BottomNavigationBarItem(
            icon: Image.asset('asset/logo/berita.png', height: 27, width: 27, color: Color(0xFF5BB4E1),),
            label: "Berita"
          ),
           BottomNavigationBarItem(
            icon: Image.asset('asset/logo/beranda.png', height: 27, width: 27,),
            label: "Beranda"
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/logo/data.png', height: 27, width: 27, color: Color(0xFF5BB4E1),),
            label: "Tabel"
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/logo/brs.png', height: 27, width: 27, color: Color(0xFF5BB4E1),),
            label: "Berita Resmi Statistik"
          ),
        ]
      ),
    );
  }
}

class PublicationScreen extends StatefulWidget {
  @override
  _PublicationScreenState createState() => _PublicationScreenState();
}

class _PublicationScreenState extends State<PublicationScreen> {
  // Variable untuk menyimpan tab yang dipilih
  String selectedTab = "Semua";
  String searchText = ""; // Variabel untuk menyimpan input pencarian

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF5BB4E1),
        title: Text(
          'Publikasi',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
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
                        hintText: 'Cari berdasarkan judul saja',
                        hintStyle: TextStyle(color: Colors.blue),
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchText = value;
                        });
                      }
                    ),
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
                      color: selectedTab == "Semua" ? Colors.blue.shade200 : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Semua',
                      style: TextStyle(
                        fontWeight: selectedTab == "Semua" ? FontWeight.bold : FontWeight.normal,
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
                      color: selectedTab == "Populer" ? Colors.blue.shade200 : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Populer',
                      style: TextStyle(
                        fontWeight: selectedTab == "Populer" ? FontWeight.bold : FontWeight.normal,
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
                  publicationCard(
                    imagePath: 'asset/Background/Image 1.png',
                    title: 'Statistik Daerah Kabupaten Banyuwangi 2024',
                    releaseDate: 'Rilis 03 Juli 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 2.png',
                    title: 'Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Pengeluaran 2019-2023',
                    releaseDate: 'Rilis 30 April 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 3.png',
                    title: 'Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Lapangan Usaha 2019-2023',
                    releaseDate: 'Rilis 04 April 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 4.png',
                    title: 'Kabupaten Banyuwangi Dalam Angka 2024',
                    releaseDate: 'Rilis 28 Februari 2024',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 5.png',
                    title: 'Statistik Kesejahteraan Rakyat Kabupaten Banyuwangi 2023',
                    releaseDate: 'Rilis 28 Desember 2023',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 6.png',
                    title: 'Hasil Pencacahan Lengkap Sensus Pertanian 2023 - Tahap I Kabupaten Banyuwangi',
                    releaseDate: 'Rilis 15 Desember 2023',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 7.png',
                    title: 'Analisis Hasil Survei Kebutuhan Data Badan Pusat Statistik Kabupaten Banyuwangi 2023',
                    releaseDate: 'Rilis 08 Desember 2023',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 8.png',
                    title: 'Buklet Hasil Pencacahan Lengkap Sensus Pertanian 2023- Tahap I Kabupaten Banyuwangi',
                    releaseDate: 'Rilis 04 Desember 2023',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 9.png',
                    title: 'Indikator Kesejahteraan Rakyat Kabupaten Banyuwangi 2023',
                    releaseDate: 'Rilis 22 November 2023',
                    context: context,
                  ),
                  SizedBox(height: 10),
                  publicationCard(
                    imagePath: 'asset/Background/Image 10.png',
                    title: 'Luas Panen Dan Produksi Padi Di Kabupaten Banyuwangi 2022',
                    releaseDate: 'Rilis 19 Oktober 2023',
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

Widget publicationCard({
  required String imagePath, 
  required String title, 
  required String releaseDate,
  required BuildContext context, 
  }) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPublikasiPage()),
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
            width: 60,
            height: 80,
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

class Berita extends StatelessWidget{
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

class Beranda extends StatelessWidget{
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

class Tabel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          "Tabel"
        ),
      ),
    );
  }
}

class BeritaResmiStatistik extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          "Berita Resmi Statistik"
        ),
      ),
    );
  }
}