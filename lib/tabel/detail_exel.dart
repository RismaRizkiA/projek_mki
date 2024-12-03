import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail Tabel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailTablePage(),
    );
  }
}

class DetailTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tabel'),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Jumlah Penduduk (Jiwa)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Kabupaten/Kota',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Jenis Kelamin\nLaki-laki',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Jenis Kelamin\nPerempuan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Pacitan')),
                      DataCell(Text('48.84')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Ponorogo')),
                      DataCell(Text('49.82')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Trenggalek')),
                      DataCell(Text('49.55')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Tulungagung')),
                      DataCell(Text('48.45')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Blitar')),
                      DataCell(Text('49.98')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Kediri')),
                      DataCell(Text('50.16')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Malang')),
                      DataCell(Text('50.21')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Lumajang')),
                      DataCell(Text('48.54')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Jember')),
                      DataCell(Text('48.87')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Banyuwangi')),
                      DataCell(Text('49.61')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bondowoso')),
                      DataCell(Text('48.44')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Situbondo')),
                      DataCell(Text('48.79')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Probolinggo')),
                      DataCell(Text('48.49')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Pasuruan')),
                      DataCell(Text('49.32')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sidoarjo')),
                      DataCell(Text('50.42')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Mojokerto')),
                      DataCell(Text('49.81')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Jombang')),
                      DataCell(Text('49.54')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Nganjuk')),
                      DataCell(Text('49.56')),
                      DataCell(Text('49.82')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Madiun')),
                      DataCell(Text('49.12')),
                      DataCell(Text('49.82')),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
