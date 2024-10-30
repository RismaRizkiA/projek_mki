import 'package:flutter/material.dart';
import 'package:projek_bps/tabel/detail_tabel01.dart';
import 'package:projek_bps/tabel/tabel.dart';

class TabelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(200), // Tinggi kontainer yang ditingkatkan
        child: Container(
          color: Colors.lightBlue, // Warna latar belakang
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Text(
                        'Tabel Statistik',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 4),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: 'BPS Banyuwangi',
                          icon: Icon(Icons.arrow_drop_down,
                              color: Colors.lightBlue),
                          dropdownColor: Colors.white,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          isExpanded:
                              true, // Menambahkan isExpanded agar dropdown menyesuaikan lebar
                          onChanged: (String? newValue) {
                            // Handle perubahan nilai
                          },
                          items: <String>[
                            'BPS Banyuwangi',
                            'Kec. Banyuwangi',
                            'Kec. Kabat',
                            'Kec. Rogojampi',
                            'Kec. Srono',
                            'Kec. Cluring',
                            'Kec. Giri',
                            'Kec. Muncar',
                            'Kec. Licin',
                            'Kec. Glagah',
                            'Kec. Singojuruh',
                            'Kec. Blimbingsari',
                            'Kec. Sempu',
                            'Kec. Giri',
                            'Kec. Kalipuro',
                            'Kec. Glagah'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Kolom Pencarian di Dalam Kontainer dengan ukuran lebih kecil
                  Container(
                    height: 45, // Ubah tinggi search box menjadi lebih kecil
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0), // Sesuaikan padding agar lebih kompak
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Kurangi radius agar lebih kecil
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Color(0xFF2787CF)),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                          size: 20, // Atur ukuran ikon menjadi lebih kecil
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12), // Memusatkan teks secara vertikal
                      ),
                      textAlignVertical: TextAlignVertical
                          .center, // Memusatkan teks secara vertikal di tengah
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Statistik Demografi dan Sosial
              TabelSection(
                title: 'Statistik Demografi dan Sosial',
                items: [
                  'Kependudukan dan Migrasi',
                  'Tenaga Kerja',
                  'Pendidikan',
                  'Kesehatan',
                  'Konsumsi dan Pendapatan',
                  'Perlindungan Sosial',
                  'Pemukiman dan Perumahan',
                  'Hukuman dan Kriminal',
                  'Budaya',
                  'Aktivitas Politik dan Komunitas Lainnya',
                  'Penggunaan Waktu',
                ],
                color: Colors.blue,
                onItemTap: (item) {
                  if (item == 'Kependudukan dan Migrasi') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PopulationTablePage(),
                        ));
                  } else {
                    // Navigasi ke halam detail lainnya
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabelDetailScreen(item: item),
                        ));
                  }
                },
              ),
              SizedBox(height: 20),

              // Statistik Ekonomi
              TabelSection(
                title: 'Statistik Ekonomi',
                items: [
                  'Statistik Makroekonomi',
                  'Neraca Ekonomi',
                  'Statistik Bisnis',
                  'Statistik Sektoral',
                  'Keuangan Pemerintah, Fiskal dan Statistik Sektor Publik',
                  'Perdagangan Internasional dan Neraca Pembayaran',
                  'Harga-Harga',
                  'Biaya Tenaga Kerja',
                  'Ilmu Pengetahuan, Teknologi, dan Inovasi',
                  'Petanian, Kehutanan, Perikanan',
                  'Energi',
                  'Pertambangan, Manufaktur, Konstruksi',
                  'Transportasi',
                  'Pariwisata',
                  'Perbankan, Asuransi dan Finansial',
                ],
                color: Colors.orange,
                onItemTap: (item) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabelDetailScreen(item: item),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),

              // Statistik Lingkungan Hidup dan Multi-domain
              TabelSection(
                title: 'Statistik Lingkungan Hidup dan Multi-Domain',
                items: [
                  'Lingkungan',
                  'Statistik Regioanal dan Statistik Area Kecil',
                  'Statistik dan Indikator Multi-Domain',
                  'Buku Tahunan dan Ringkasan Sejenis',
                  'Kondisi Tempat Tinggal, Kemiskinan, dan Permasalahan Sosial Lintas Sektor',
                  'Gender dan Kelompok Populasi Khusus',
                  'Masyarakat Informasi',
                  'Globalisasi',
                  'Indikator Milenium Development Goals (MDGs)',
                  'Perkembangan Berkelanjutan',
                  'Kewirausahaan',
                ],
                color: Colors.green,
                onItemTap: (item) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabelDetailScreen(item: item),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class TabelSection extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color color;
  final Function(String)
      onItemTap; // Tambahkan fungsi callback untuk menangani klik

  TabelSection({
    required this.title,
    required this.items,
    required this.color,
    required this.onItemTap, // Terima parameter onItemTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ...items.map((item) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                child: InkWell(
                  onTap: () => onItemTap(
                      item), // Panggil fungsi onItemTap saat item diklik
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class TabelDetailScreen extends StatelessWidget {
  final String item;

  TabelDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail $item',
          style: TextStyle(
              color: Colors.white), // Mengubah warna teks menjadi putih
        ),
        backgroundColor: Colors.lightBlue,
        iconTheme: IconThemeData(
          color: Colors.white, // Mengubah warna tombol kembali menjadi putih
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Ini adalah halaman detail untuk $item',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

// Tambahkan kode berikut untuk halaman "PopulationTablePage"
// class PopulationTablePage extends StatelessWidget {
//   final List<String> items = [
//     'Jumlah penduduk (Jiwa)',
//     'Proyeksi Penduduk 2010-2035 (Laki-laki) (Ribu Jiwa)',
//     'Proyeksi Penduduk 2010-2035 (Perempuan+Laki-laki) (Ribu Jiwa)',
//     'Proyeksi Penduduk 2010-2035 (Perempuan) (Ribu Jiwa)',
//     'Penduduk Usia 10 Tahun Ke Atas di Jawa Timur Dirinci Menurut Kabupaten/Kota dan Jenis Kelamin, 2023',
//     // (Item lainnya)
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back, color: Colors.white),
//         title: Text('Tabel Kependudukan dan Migrasi',
//             style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//         backgroundColor: Color(0xFF5AB4EF),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: EdgeInsets.symmetric(vertical: 8.0),
//               decoration: BoxDecoration(
//                 color: Color(0xFFD4E8FF),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: ListTile(
//                 title: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     items[index],
//                     style: TextStyle(fontSize: 16, color: Colors.black87),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
