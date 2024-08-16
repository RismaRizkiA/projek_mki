import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
        )
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter, //tampilan body
            child: Container(
              width: MediaQuery.of(context).size.width * 100,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF85BB4E1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), 
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 15,
            child: Image.asset(
              'asset/logo/logo.png',
              width: 170,
              height: 47,
            ),
          ),
          Positioned(
            top: 10,
            right: 50,
            child: Icon(
              Icons.account_circle_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.info_outline,
              size: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}