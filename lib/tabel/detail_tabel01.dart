import 'package:flutter/material.dart';
import 'package:projek_bps/tabel/tabel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabel Kependudukan dan Migrasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopulationTablePage(),
    );
  }
}

class PopulationTablePage extends StatelessWidget {
  final List<String> items = [
    'Jumlah penduduk (Jiwa)',
    'Proyeksi Penduduk 2010-2035 (Laki-laki) (Ribu Jiwa)',
    'Proyeksi Penduduk 2010-2035 (Perempuan+Laki-laki) (Ribu Jiwa)',
    'Proyeksi Penduduk 2010-2035 (Perempuan) (Ribu Jiwa)',
    'Penduduk Usia 10 Tahun Ke Atas di Jawa Timur Dirinci Menurut Kabupaten/Kota dan Jenis Kelamin, 2023\nTerakhir Diperbarui pada 27 Mei 2024',
    'Penduduk Usia 13-15 Tahun di Jawa Timur Dirinci Menurut Kabupaten/Kota dan Jenis Kelamin, 2023\nTerakhir Diperbarui pada 27 Mei 2024',
    'Penduduk Usia 16-18 Tahun di Jawa Timur Dirinci Menurut Kabupaten/Kota dan Jenis Kelamin, 2023\nTerakhir Diperbarui pada 27 Mei 2024',
    'Penduduk Usia 19-24 Tahun di Jawa Timur Dirinci Menurut Kabupaten/Kota dan Jenis Kelamin, 2023\nTerakhir Diperbarui pada 27 Mei 2024',
    'Penduduk Usia 5-6 Tahun di Jawa Timur Dirinci',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => TabelScreen()),
            );
          },
        ),
        title: Text(
          'Tabel Kependudukan dan Migrasi',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF5AB4EF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                color: Color(0xFFD4E8FF), // Warna latar belakang biru muda
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    items[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
