import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsDetail02(),
    );
  }
}

class NewsDetail02 extends StatelessWidget {
  const NewsDetail02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi kembali di sini
          },
        ),
        title: const Text('Berita', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image_berita2.jpg', // Pastikan path gambar ini sesuai
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              const Text(
                'Pelatihan Petugas Survei Ekonomi Pertanian (SEP) UTP 2024',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Badan Pusat Statistik (BPS) akan menggelar Survei Ekonomi Pertanian (SEP) 2024 pada Juni 2024. SEP 2024 merupakan lanjutan dari Sensus Pertanian 2023. SEP akan dilaksanakan untuk mendata Usaha Pertanian Perorangan (UTP), Usaha Pertanian Berbadan Hukum (UPB), dan Usaha Pertanian Lainnya (UTL).\n\n'
                'Survei Ekonomi Pertanian 2024 diselenggarakan dengan maksud tersedianya data ekonomi pertanian yang akurat dan terkini yang dapat digunakan sebagai acuan bagi pemerintah maupun stakeholder dalam perencanaan dan merumuskan kebijakan-kebijakan baik untuk kepentingan pembangunan umum maupun untuk pembangunan nasional dan mengetahui kesejahteraan petani.\n\n'
                'Adapun beberapa tujuan SEP diantaranya mengetahui informasi karakteristik unit usaha pertanian, pendapatannya, pengeluarannya, akses terhadap sarana, prasarana, dan pemasarananya, serta performele indikator SDGs terkait pertanian.\n\n'
                'Rangkaian persiapan SEP sudah dimulai pada bulan Mei diawali dengan rapat persiapan yang dilakukan oleh Tim ST2023 BPS Kabupaten Banyuwangi. Adapun pelaksanaan lapangan SEP akan berlangsung pada bulan Juni 2024 dan dilanjutkan dengan pengolahan serta evaluasi hasil hingga rilis hasil SEP pada bulan Desember 2024.',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: double.infinity, //membuat tombol melebar
                  child: ElevatedButton(
                    onPressed: () {
                      //Tambahkan fungsi share di sini
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ), //Mengatur tinggi tombol
                    ),
                    child: const Text(
                      'Bagikan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
