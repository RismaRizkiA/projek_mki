import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBar(
          flexibleSpace: Column(
            children: [
              // Container(
              //   color: Colors.white,
              //   height: 37.0,
              // ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF5BB4E1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
      ),
      //tampilan slider 
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 500,
              height: 150, // Sisa layar
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[100],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                padding: const EdgeInsets.only(top: 0),
                                child: Image.asset(
                                  'asset/logo/inflasi.png',
                                  width: 50,
                                  height: 50,
                                  color: Color(0xFF5BB4E1),
                                ),
                              ),
                              Container(
                                width: 200,
                                padding: const EdgeInsets.only(top: 0),
                                child: Text(
                                  '2,13'
                                  'Inflasi Year on Year'
                                  'Juli 2024 tolong bantu sayaaaaaaaaaa',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5BB4E1),
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                        padding: EdgeInsets.only(left: 5),
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[100],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                padding: const EdgeInsets.only(top: 0),
                                child: Image.asset(
                                  'asset/logo/pertumbuhan.png',
                                  width: 38,
                                  height: 38,
                                  color: Color(0xFF5BB4E1),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 200,
                                padding: const EdgeInsets.only(top: 0),
                                child: Text(
                                  '5,05'
                                  'Pertumbuhan Ekonomi',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5BB4E1),
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                        padding: EdgeInsets.only(left: 5),
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[100],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                padding: const EdgeInsets.only(top: 0),
                                child: Image.asset(
                                  'asset/logo/presentase.png',
                                  width: 38,
                                  height: 38,
                                  color: Color(0xFF5BB4E1),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 40,
                                padding: const EdgeInsets.only(top: 0),
                                child: Text(
                                  '9,03'
                                  'Presentase Penduduk Miskin',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5BB4E1),
                                  ),
                                ),
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
          ),
      ],),
    );
  }
}











// backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(150.0),
//         child: AppBar(
//           backgroundColor: Colors.white,
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF5BB4E1),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30),
//                 bottomRight: Radius.circular(30),
//               ),
//             ),
//           ),
//           title: Padding(
//             padding:const EdgeInsets.all(0),
//             child: Image.asset(
//               'asset/logo/logo.png',
//               width: 170,
//               height: 60,
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.account_circle_outlined, color: Colors.white,size: 35,),
//               onPressed: (){},
//             ),
//             IconButton(
//               icon: Icon(Icons.info_outline, color: Colors.white, size: 35,),
//               onPressed: (){},
//             ),
//           ],
//         ),
//       ),

      // Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     margin: EdgeInsets.only(top: 95), // Gunakan margin untuk posisi vertikal
          //     width: MediaQuery.of(context).size.width * 0.9, // Lebar kotak biru muda
          //     height: 100, // Tinggi kotak biru muda
              
          //     decoration: BoxDecoration(
          //       color: Colors.blue[100],
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Center(
          //       child: Text(
          //         'Inflasi Year on Year',
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Color(0xFF2787CF),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Container(
          // width: 500,
          // height: 150,
          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //   Padding(
          //     padding: const EdgeInsets.all(17.0),
          //     child: InkWell(
          //       onTap: (){},
          //       child: Container(
          //         width: 330,
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //         child: Center(child: Text('Inflasi Year on Year', style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //       ),
          //     ),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(15.0),
          //     child: InkWell(
          //       onTap: (){},
          //       child: Container(
          //         width: 330,
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //         child: Center(child: Text("Pertumbuhan Ekonomi", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //       ),
          //     ),
          //   ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Presentase Penduduk Miskin", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Tingkat Pengangguran Terbuka", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Gini Rasio", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("IPM(UHH LF SP2020)", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Nilai Ekspor", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Nilai Impor", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Nilai Neraca Perdagangan", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Angka Harapan Hidup Laki-Laki", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Angka Harapan Hidup Perempuan", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(20.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Kunjungan Wisma ke Indonesia", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(20.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("IHPB", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(20.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Nilai Tukar Petani", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),
          //   // Padding(
          //   //   padding: const EdgeInsets.all(15.0),
          //   //   child: InkWell(
          //   //     onTap: (){},
          //   //     child: Container(
          //   //       width: 330,
          //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
          //   //       child: Center(child: Text("Nilai Tukar Nelayan dan Pembudidaya Ikan", style: TextStyle(fontSize: 20, color: Color(0xFF2787CF)),)),
          //   //     ),
          //   //   ),
          //   // ),