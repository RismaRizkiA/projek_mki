import 'package:flutter/material.dart';
import 'package:projek_bps/publikasi/publikasi.dart';

class HomeUtama extends StatefulWidget{
  @override
  State<HomeUtama> createState() => _HomeUtamaState();
}

class _HomeUtamaState extends State<HomeUtama> {
  int i = 2;
  List<Widget> widgets = [
    PublicationScreen(), Berita(), Beranda() , Tabel(), BeritaResmiStatistik(),
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

class Publikasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.transparent,
      body: Center(
        child: Text("Publikasi"),
      ),
    );
  }
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

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  // String selectedTab = "Semua";

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
                  bottomRight: Radius.circular(70)
                )
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  backgroundColor: Color(0xFF5BB4E1),
                  title: Padding(
                    padding:const EdgeInsets.all(0),
                    child: Image.asset(
                      'asset/logo/logo.png',
                      width: 186,
                      // height: 70,
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.account_circle_outlined, color: Colors.white,size: 35,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.info_outline, color: Colors.white, size: 35,),
                      onPressed: (){},
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
                              color: Color(0xFFDCDDDE),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height:0),
                                  Image.asset(
                                    'asset/logo/inflasi.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '2,13',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
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
                              color: Color(0xFFDCDDDE),
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
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '5,05%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Pertumbuhan Ekonomi',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Triwulan II 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              )
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
                              color: Color(0xFFDCDDDE),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(padding: const EdgeInsets.only(top: 6)),
                                  SizedBox(height: 50),
                                  Image.asset(
                                    'asset/logo/presentase.png',
                                    width: 40,
                                    height: 40,
                                    color: Color(0xFF2787CF),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '9,03%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Presentase Penduduk Miskin',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Maret 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color:Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '5,05%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Tingkat Pengangguran Terbuka',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Februari 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '0,379',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Gini Rasio',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Maret 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '74,39',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'IPM (UHH LF SP2020)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        '2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        "20.845,1 Juta \$",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF52787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Ekspor',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '18.450,9 Juta \$',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Impor',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '2.389,7 Juta \$',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Neraca Perdagangan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024*)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '70,17 Juta \$',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Angka Harapan Hidup Laki-Laki',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Juni 2024*)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '70,18 Tahun',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Angka Harapan Hidup Perempuan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        '2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '1.145.499 Kunjungan',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Kunjungan Wisma ke Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Mei 2024',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '119,39',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'IHPB',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '119,61',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Tukar Petani',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                                          color: Color(0xFF434343)
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
                              color: Color(0xFFDCDDDE),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 15)),
                                      SizedBox(height: 8, width: 30),
                                      Text(
                                        '101,1',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2787CF)
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 0),
                                      Text(
                                        'Nilai Tukar Nelayan dan Pembudidaya Ikan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF434343)
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
                                          color: Color(0xFF434343)
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
                      // Tambahkan item lain jika diperlukan
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              SizedBox(height: 15),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     // Tab Semua
                          //     GestureDetector(
                          //       onTap: () {
                          //         setState(() {
                          //           selectedTab = "Semua";
                          //         });
                          //       },
                          //       child: Container(
                          //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          //         decoration: BoxDecoration(
                          //           color: selectedTab == "Semua" ? Colors.blue.shade200 : Colors.transparent,
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Text(
                          //           'Semua',
                          //           style: TextStyle(
                          //             fontWeight: selectedTab == "Semua" ? FontWeight.bold : FontWeight.normal,
                          //             color: selectedTab == "Semua" ? Colors.black : Colors.grey,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     SizedBox(width: 40),

                          //     // Tab Populer
                          //     GestureDetector(
                          //       onTap: () {
                          //         setState(() {
                          //           selectedTab = "Populer";
                          //         });
                          //       },
                          //       child: Container(
                          //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          //         decoration: BoxDecoration(
                          //           color: selectedTab == "Populer" ? Colors.blue.shade200 : Colors.transparent,
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Text(
                          //           'Populer',
                          //           style: TextStyle(
                          //             fontWeight: selectedTab == "Populer" ? FontWeight.bold : FontWeight.normal,
                          //             color: selectedTab == "Populer" ? Colors.black : Colors.grey,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     SizedBox(width: 40),

                          //     // Tab Utama
                          //     GestureDetector(
                          //       onTap: () {
                          //         setState(() {
                          //           selectedTab = "Utama";
                          //         });
                          //       },
                          //       child: Container(
                          //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          //         decoration: BoxDecoration(
                          //           color: selectedTab == "Utama" ? Colors.blue.shade200 : Colors.transparent,
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Text(
                          //           'Utama',
                          //           style: TextStyle(
                          //             fontWeight: selectedTab == "Utama" ? FontWeight.bold : FontWeight.normal,
                          //             color: selectedTab == "Utama" ? Colors.black : Colors.grey,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            // Selected 'Semua' Button
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                                child: Text(
                                  'Semua',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // Non-selected 'Popular' dan 'Utama' Button
                              Text(
                                'Populer',
                                style: TextStyle(
                                  color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Utama',
                                style: TextStyle(
                                  color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          //Section 1: Publikasi Statistik
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InfoCardList(items: [
                              '03 Juli 2024 \u2022 Statistik Daerah Kabupaten Banyuwangi 2024',
                              '30 April 2024 \u2022 Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Pengeluaran 2019-2023',
                              '04 April 2024 \u2022 Produk Domestik Regional Bruto Kabupaten Banyuwangi Menurut Lapangan Usaha 2019-2023',
                              '28 Februari 2024 \u2022 Kabupaten Banyuwangi Dalam Angka 2024',
                              '28 Desember 2023 \u2022 Statistik Kesejahteraan Rakyat Kabupaten Banyuwangi 2023',
                              '15 Desember 2023 \u2022 Hasil Pencacahan Langka Sensus Pertanian 2023-Tahap II Kabupaten Banyuwangi',
                              '08 Desember 2023 \u2022 Analisis Hasil Survei Kebahagiaan di Badan Pusat Statistik Kabupaten Banyuwangi',
                            ]), 
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 6), // spasi antara judul dan tombol
                              ElevatedButton(
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(height: 10),
                          // Section 2: Tabel Statistik
                          Padding(
                            padding: const EdgeInsetsDirectional.all(5.0),
                            child: InfoCardList(items: [
                              '22 Juli 2024 \u2022 [KESEHATAN] - Pesantren Pesantren di Jawa Timur yang Memiliki Kerja Sama dengan Layanan Kesehatan Luar',
                              '19 Juli 2024 \u2022 [INFLASI] - Inflasi Tahunan Kalender',
                              '17 Juli 2024 \u2022 [HARGA ECERAN] - Rata-rata Harga Eceran Beberapa Jenis Barang',
                            ]), 
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,), // spasi antara judul dan tombol
                              ElevatedButton(
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                )
                              ),
                            ],
                          ),
                          SizedBox(height: 10),  
                          // Section 3: Infografis
                          ImageCard(imagePath: 'asset/Background/info1.png'),
                          ImageCard(imagePath: 'asset/Background/info2.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,), // spasi antara judul dan tombol
                              ElevatedButton(
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(height: 10),
                          // Section 4: Berita Resmi Statistik
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InfoCardList(items: [
                              '01 Agustus 2024 \u2022 Perkembangan Indeks Harga Konsumen/Inflasi Banyuwangi Bulan Juli 2024',
                              '28 Februari 2024 \u2022 Pertumbuhan Ekonomi Kabupaten Banyuwangi Tahun 2023',
                              '06 Desember 2021 \u2022 Indeks Pembangunan Manusia (IPM) Tahun 2021',
                              '12 April 2021 \u2022 Luas Panen dan Produksi Padi di Kabupaten Banyuwangi Tahun 2020',
                            ]),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ],
            ),
        ],),
      ),
    );
  }
}


class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class InfoCardList extends StatelessWidget {
  final List<String> items;

  InfoCardList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Card(
            color: Color(0xFFC9E1F3),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                item,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;

  ImageCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('imagePath'),
            fit: BoxFit.cover,
          ),
        ),
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
