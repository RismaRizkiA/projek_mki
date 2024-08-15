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
                color: Colors.blue[200],
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
            top: 15,
            left: 18,
            child: Image.asset(
              'asset/logo/logo.png',
              width: 170,
              height: 170,
            ),
          )
        ],
      ),
    );
  }
}