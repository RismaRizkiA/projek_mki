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
      home: NewsDetail01(
        title: '',
        description: '',
        image: '',
      ),
    );
  }
}

class NewsDetail01 extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const NewsDetail01({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          'Berita',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  'asset/foto/image_berita1.jpg'), // Ganti dengan path gambar Anda
              const SizedBox(height: 16),
              const Text(
                'Pelatihan Petugas VHTL dan VDTW Tahun 2024',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sobat Data,\n\nPada hari Kamis, 7 Juni 2024 BPS Kabupaten Banyuwangi menyelenggarakan pelatihan petugas VHTL (Survei Hotel Tahunan), Wisnus dan VDTW (Survei Wisatawan Nusantara/Wisnus) tahun 2024 secara tatap muka di Kantor BPS Kabupaten Banyuwangi. Pelatihan ini diikuti oleh 10 orang petugas.\n\nPelaksanaan Pelatihan Petugas ini untuk meningkatkan kemampuan dan pemahaman petugas lapangan serta menyamakan persepsi terkait konsep definisi pendataan VHTL dan VDTW Tahun 2024. \n\nPendataan VHTL dan VDTW Tahun 2024 dilaksanakan serentak di seluruh indonesia pada bulan Juni-Agustus 2024 dengan tujuan untuk mendapatkan karakteristik profil perusahaan/usaha penyedia akomodasi dan objek daya tarik wisata.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
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
