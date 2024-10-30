import 'package:flutter/material.dart';
import 'package:projek_bps/menuberita/menu_berita.dart';
import 'package:projek_bps/publikasi/detail.dart';
import 'package:projek_bps/publikasi/publikasi.dart';
import 'package:projek_bps/brs/brs.dart';
import 'package:projek_bps/tabel/tabel.dart';

class HomeUtama extends StatefulWidget {
  @override
  State<HomeUtama> createState() => _HomeUtamaState();
}

class _HomeUtamaState extends State<HomeUtama> {
  int i = 2;
  List<Widget> widgets = [
    PublicationScreen(),
    MenuBerita(),
    Beranda(),
    TabelScreen(),
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

class Publikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Publikasi"),
      ),
    );
  }
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

class Beranda extends StatefulWidget {
  @override
  Berandaa createState() => Berandaa();
}

class Berandaa extends State<Beranda> {
  String selectedTab = "Semua";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //tampilan slider
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xFF5BB4E1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  backgroundColor: Color(0xFF5BB4E1),
                  title: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.asset(
                      'asset/logo/logo.png',
                      width: 186,
                      // height: 70,
                    ),
                  ),
                  actions: [
                    // IconButton(
                    //   icon: Icon(Icons.account_circle_outlined, color: Colors.white,size: 35,),
                    //   onPressed: (){},
                    // ),
                    IconButton(
                      padding: EdgeInsets.only(right: 20),
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  width: 500,
                  height: 140, // Sisa layar
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 0),
                                  Image.asset(
                                    'asset/logo/inflasi.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '2,13',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Inflasi Year on Year',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343),
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juli 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343),
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(height: 50),
                                Image.asset(
                                  'asset/logo/pertumbuhan.png',
                                  width: 40,
                                  height: 40,
                                  color: Color(0xFF2787CF),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15)),
                                    SizedBox(height: 8, width: 30),
                                    Text(
                                      '5,05%',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 0),
                                    Text(
                                      'Pertumbuhan Ekonomi',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 0),
                                    Text(
                                      'Triwulan II 2024',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 6)),
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/presentase.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '9,03%',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Presentase Penduduk Miskin',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Maret 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/tingkatpengangguran.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '5,05%',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Tingkat Pengangguran Terbuka',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Februari 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/presentase.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '0,379',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Gini Rasio',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Maret 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/ipm.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '74,39',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'IPM (UHH LF SP2020)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        '2023',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/nilai ekspor.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        "20.845,1 Juta \$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF52787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Ekspor',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/nilai ekspor.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '18.450,9 Juta \$',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Impor',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/nilai ekspor.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '2.389,7 Juta \$',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Neraca Perdagangan',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024*)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/angka harapan.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '70,17 Juta \$',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Angka Harapan Hidup Laki-Laki',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024*)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/angka harapan.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '70,18 Tahun',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Angka Harapan Hidup Perempuan',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        '2023',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/kunjungan.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '1.145.499 Kunjungan',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Kunjungan Wisma ke Indonesia',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Mei 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/inflasi.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '119,39',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'IHPB',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juli 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/inflasi.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFFC9D8E6),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '119,61',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Tukar Petani',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juli 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/inflasi.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '101,1',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2787CF)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Tukar Nelayan dan Pembudidaya Ikan',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juli 2024',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF434343)),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Tambahkan item lain jika diperlukan
                    ],
                  ),
                ),
                SizedBox(height: 1),
                Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
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
                        Column(
                          children: [
                            SizedBox(height: 0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Informasi Terbaru',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PublicationScreen(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Publikasi Statistik',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Lihat Semua',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20, width: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Tab Semua
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedTab = "Semua";
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: selectedTab == "Semua"
                                          ? Color(0xFF5BB4E1)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      'Semua',
                                      style: TextStyle(
                                        fontWeight: selectedTab == "Semua"
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        color: selectedTab == "Semua"
                                            ? Colors.black
                                            : Colors.grey,
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: selectedTab == "Populer"
                                          ? Color(0xFF5BB4E1)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      'Populer',
                                      style: TextStyle(
                                        fontWeight: selectedTab == "Populer"
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        color: selectedTab == "Populer"
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //Section 1: Publikasi Statistik
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "03 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Statistik Daerah Kabupaten Banyuwangi 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "30 April 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Pengeluaran 2019-2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 110,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "04 April 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Lapangan Usaha 2019-2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "28 Februari 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Kabupaten Banyuwangi Dalam Angka 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "28 Desember 2023",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Statistik Kesejahteraan Rakyat Kabupaten Banyuwangi 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "15 Desember 2023",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Hasil Pencacahan Langka Sensus Pertanian 2023-Tahap II Kabupaten Banyuwangi",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Aksi ketika container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPublikasiPage()),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "08 Desember 2023",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Analisis Hasil Survei Kebahagiaan di Badan Pusat Statistik Kabupaten Banyuwangi",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Section 2: Tabel Statistik
                            SizedBox(height: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 6), // spasi antara judul dan tombol
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tabel Statistik',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Lihat Semua',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>TabelStatistik)
                              //   );
                              // },
                              child: Container(
                                height: 150,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "22 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 [KESEHATAN] - Persentase Penduduk di Jawa Timur yang Mempunyai Keluhan Kesehatan Selama Sebulan Terakhir dan Gangguan Sakit Dirinci Menurut Jenis Kelamin dan Kabupaten/Kota (Persen), 2015 - 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>TabelStatistik)
                              //   );
                              // },
                              child: Container(
                                height: 150,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "22 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 [KESEHATAN] - Persentase Penduduk di Jawa Timur Dirinci Menurut Kabupaten/Kota, Berobat Jalan Selama Satu Bulan Terakhir dan Jenis Kelamin (Persen), 2015 - 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>TabelStatistik)
                              //   );
                              // },
                              child: Container(
                                height: 160,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "22 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [KESEHATAN] - Persentase Penduduk di Jawa Timur Mempunyai Keluhan Kesehatan Dirinci Menurut Kabupaten/Kota, Pernah Mengobati Sendiri Selama Satu Bulan Terakhir dan Jenis Kelamin (Persen), 2019 - 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 [INFLASI] - Inflasi Tahun Kalender (Persen), 2014 - 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [INFLASI] - Inflasi Tahun ke Tahun (Persen), 2014 - 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [INFLASI] - Inflasi Bulanan (Persen), 2014 - 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [INFLASI] - Inflasi Tahun Kalender Menurut Kelompok Pengeluaran (Persen), 2022 - 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 [Harga Eceran] - Rata-rata Harga Eceran Beberapa Jenis Barang, 2022",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [Harga Eceran] - Rata-rata Harga Eceran Beberapa Jenis Barang, 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [Harga Eceran] - Rata-rata Harga Eceran Beberapa Jenis Barang, 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [Harga Produsen] - Rata-rata Harga Produsen Beberapa Jenis Barang, 2022",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [Harga Produsen] - Rata-rata Harga Produsen Beberapa Jenis Barang, 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>TabelStatistik)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 Juli 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 [Harga Produsen] - Rata-rata Harga Produsen Beberapa Jenis Barang, 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Section 3: Infografis
                            SizedBox(height: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ), // spasi antara judul dan tombol
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightBlue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Infografis',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Lihat Semua',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white,
                                              size: 14,
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>DetailBRS)
                              //   );
                              // },
                              child: Container(
                                height: 500,
                                width: 350,
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/Background/info1.png',
                                      width: 380,
                                      height: 480,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>DetailBRS)
                              //   );
                              // },
                              child: Container(
                                height: 500,
                                width: 350,
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/Background/info2.png',
                                      width: 380,
                                      height: 480,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Section 4: Berita Resmi Statistik
                            SizedBox(height: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ), // spasi antara judul dan tombol
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Berita Resmi Statistik',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Lihat Semua',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) =>DetailBRS)
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "02 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Perkembangan Jasa Akomodasi Kabupaten Banyuwangi Juli 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                //Aksi ketika container ditekan
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>DetailBRS)
                                // );
                              },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "02 September 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 Perkembangan Indeks Harga Konsumenn/Inflasi Banyuwangi Bulan Agustus 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   // Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => DetailBRS()),
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "01 Agustus 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Profil Kemiskinan Kabupaten Banyuwangi Maret 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   // Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => DetailBRS()),
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "01 Agustus 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 Perkembangan Jasa Akomodasi Kabupaten Banyuwangi Juni 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   // Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => DetailBRS()),
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "01 Agustus 2024",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "\u2022 Perkembangan Indeks Harga Konsumen/Inflasi Banyuwangi Bulan Juli 2024",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 100,
                              width: 350,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFC9E1F3),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "28 Februari 2024",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "\u2022 Pertumbuhan Ekonomi Kabupaten Banyuwangi Tahun 2023 ",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF2787CF)),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   // Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => DetailBRS()),
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "01 Maret 2023",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Perkembangan Indeks Harga Konsumen/Inflasi Banyuwangi Bulan Februari 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              // onTap: () {
                              //   // Aksi ketika container ditekan
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => DetailBRS()),
                              //   );
                              // },
                              child: Container(
                                height: 100,
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC9E1F3),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "06 Juni 2017",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "\u2022 Perkembangan Indeks Harga Konsumen/Inflasi Banyuwangi Bulan Mei 2017",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF2787CF)),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class SectionHeader extends StatelessWidget {
//   final String title;

//   SectionHeader({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class InfoCardList extends StatelessWidget {
//   final List<String> items;

//   InfoCardList({required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: items.map((item) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 1),
//           child: Card(
//             color: Color(0xFFC9E1F3),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Text(
//                 item,
//                 style: TextStyle(fontSize: 14, color: Colors.black87),
//               ),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

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
