import 'package:flutter/material.dart';

class PopUpUnduh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Menggunakan Container untuk memberikan batas pada gambar
          Container(
            height: 290,
            width: 310,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20),
                // Gambar unduhan, pastikan menempatkan file gambar di folder 'assets'
                Image.asset(
                  'asset/logo/unduh.png', // Pastikan path menuju file Anda benar
                  width: 180,
                  height: 180,
                ),
                SizedBox(height: 15),
                // Teks di bawah gambar tanpa garis bawah
                Text(
                  'Publikasi Telah Diunduh',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xFF8AD752),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none, // Menghilangkan garis bawah
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
