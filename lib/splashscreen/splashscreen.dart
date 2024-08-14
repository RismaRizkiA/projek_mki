import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projek_bps/beranda/beranda.dart';

class Splashscreen extends StatefulWidget {
  // splashscreen
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 2), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'asset/Background/Vector 1.png',
              width: 120
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'asset/Background/Vector 2.png',
              width: 120
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'asset/logo/splashscreen.png',
              width: 150
            ),
          ),
        ],
      ),
    );
  }
}