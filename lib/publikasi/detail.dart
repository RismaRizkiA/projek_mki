import 'package:flutter/material.dart';
import 'package:projek_bps/beranda/beranda.dart';
import 'package:projek_bps/publikasi/publikasi.dart';

class DetailPublikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPublikasiPage(),
    );
  }
}

class DetailPublikasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background biru yang diperpanjang
            Container(
              height: 220, // Atur ketinggian sesuai keinginan
              color: Color(0xFF5BB4E1),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(
                                context,
                                MaterialPageRoute(builder: (context) => Publikasi()),
                              );// Aksi ketika tombol kembali ditekan
                            },
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Detail Publikasi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Image.asset(
                          'asset/Background/Image 1.png', // Sesuaikan dengan path gambar
                          width: 150,
                          height: 200,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Statistik Daerah Kabupaten Banyuwangi 2024",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2787CF),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dirilis Pada Tanggal 03 Juli 2024",
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildInfoCard('Nomor Katalog', '1101002.3510', Icons.archive),
                          _buildInfoCard('Nomor Publikasi', '35100.24004', Icons.book),
                          _buildInfoCard('ISSN/ISBN', '2356-3842', Icons.qr_code),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abstrasi",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2787CF),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Publikasi Statistik Daerah Kabupaten Banyuwangi 2024 ini merupakan publikasi yang diterbitkan oleh Badan Pusat Statistik Kabupaten Banyuwangi. Publikasi ini menyajikan berbagai data dan informasi statistik yang bersifat umum, ringkas, strategi dengan analisis deskriptif sosial dan ekonomi Banyuwangi. Beberapa tema yang tercakup dalam publikasi ini antara lain kondisi geografi, kesehatan, pendidikan, ketenagakerjaan, pertumbuhan ekonomi, inflasi, ekspor-impor dan aspek sosial ekonomi lainnya. Dengan terbitnya publikasi ini pengguna dapat memanfaatkannya untuk bahan rujukan/kajian perencanaan, pemantauan kemajuan, dan evaluasi kegiatan pembangunan di Banyuwangi.",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Aksi untuk unduh publikasi
                          },
                          label: Text(
                            "Unduh Publikasi (2.45 MB)",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF5BB4E1),
                            padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildInfoCard(String title, String value, IconData icon) {
  return Column(
    children: [
      Container(
        width: 100, // Lebar card
        height: 150, // Tinggi card
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: Colors.blue,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
