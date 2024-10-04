import 'package:flutter/material.dart';
import 'package:projek_bps/brs/brs.dart';
import 'package:projek_bps/brs/detail_brs.dart';
import 'package:projek_bps/unduh/unduh.dart';

class DetailBRSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Background biru yang diperpanjang
              Container(
                height: 210, // Atur ketinggian sesuai keinginan
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
                                icon:
                                    Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BRSScreen()),
                                  ); // Aksi ketika tombol kembali ditekan
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
                              'asset/foto/beritaresmi.jpg',
                              width: 250,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height:
                                        15), // Menambahkan ruang di atas konten agar tidak tertimpa
                                Text(
                                  'Luas Panen dan Produksi Padi di Kabupaten Banyuwangi 2020',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF2787CF),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Dirilis Pada Tanggal 12 April 2021',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xFF2787CF),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _buildDownloadCard(
                                        Icons.insert_drive_file, 'Infografis'),
                                    _buildDownloadCard(
                                        Icons.qr_code, 'Bahan Tayang'),
                                  ],
                                ),
                                SizedBox(height: 24),
                                _buildAbstractSection(),
                                SizedBox(height: 15),
                                Center(
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      // Aksi untuk unduh publikasi
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            backgroundColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: PopUpUnduhBrs(),
                                          );
                                        },
                                      );
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ],
          ),
        ));
  }

  Widget _buildDownloadCard(IconData icon, String label) {
    return Container(
      width: 120, // Lebar card
      height: 150, // Tinggi card
      margin: EdgeInsets.symmetric(horizontal: 8),
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
          Icon(icon,
              color: const Color(0xFF2787CF), size: 40), // Ikon besar di atas
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: const Color(0xFF2787CF),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Unduh',
            style: TextStyle(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAbstractSection() {
    return Container(
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
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\u2022 Abstraksi',
            style: TextStyle(
              color: const Color(0xFF2787CF),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Column(children: [
            Text(
              'Luas panen padi pada 2020 sebesar 83.992,8 hektar, mengalami kenaikan sebanyak 2.440 hektar atau 2,99 persen dibandingkan 2019 yang sebesar 81.552,8 hektar.',
              style: TextStyle(
                fontSize: 14,
                color: const Color(0x882787CF),
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              '\u2022 Produksi padi pada 2020 sebesar 470.832,6 ton gabah kering giling (GKG), mengalami kenaikan sebanyak 25.578,8 ton atau 5,74 persen dibandingkan 2019 yang sebesar 445.253,9 ton GKG.',
              style: TextStyle(
                fontSize: 14,
                color: const Color(0x882787CF),
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              '\u2022 Potensi produksi padi subround Januari-April 2021 diperkirakan sebesar 215.164,8 GKG, mengalami kenaikan sebesar 40.429,3 ton atau 84,43 persen dibandingkan subround yang sama pada 2020 yang sebesar 116.724,6 ton GKG.',
              style: TextStyle(
                fontSize: 14,
                color: const Color(0x882787CF),
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ],
      ),
      // Text(
      //   'Luas panen padi pada 2020 sebesar 83.992,8 hektar, mengalami kenaikan sebanyak 2.440 hektar atau 2,99 persen dibandingkan 2019 yang sebesar 81.552,8 hektar. \u2022 Produksi padi pada 2020 sebesar 470.832,6 ton gabah kering giling (GKG), mengalami kenaikan sebanyak 25.578,8 ton atau 5,74 persen dibandingkan 2019 yang sebesar 445.253,9 ton GKG. Potensi produksi padi subround Januari-April 2021 diperkirakan sebesar 215.164,8 GKG, mengalami kenaikan sebesar 40.429,3 ton atau 84,43 persen dibandingkan subround yang sama pada 2020 yang sebesar 116.724,6 ton GKG.',
      //   style: TextStyle(
      //     fontSize: 14,
      //     color: const Color(0x882787CF),
      //   ),
      //   textAlign: TextAlign.justify,
      // ),
    );
  }
}
