import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infografis App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfografisScreen(),
    );
  }
}

class InfografisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infografis'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action untuk tombol kembali
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown Filter
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: 'Statistik Demografi dan Sosial',
                  items: [
                    DropdownMenuItem(
                      value: 'Statistik Demografi dan Sosial',
                      child: Text('Statistik Demografi dan Sosial'),
                    ),
                    DropdownMenuItem(
                      value: 'Statistik Ekonomi',
                      child: Text('Statistik Ekonomi'),
                    ),
                    DropdownMenuItem(
                      value: 'Statistik Lingkungan Hidup dan Multidomain',
                      child: Text('Statistik Lingkungan Hidup dan Multidomain'),
                    ),
                  ],
                  onChanged: (value) {
                    // Aksi ketika dropdown berubah
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            // Infografis Card
            Text(
              'Infografis Jumlah Tamu Pada Hotel Bintang',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Bagian Infografis
                    Image.asset('assets/image.png', fit: BoxFit.cover),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2020 - 2023',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text('Asing'),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text('Domestik'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tamu yang Menginap pada Hotel Bintang\nJumlah tamu pada tahun 2023 terhitung sampai bulan Juni',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi tombol unduh
                      },
                      child: Text('UNDUH'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
