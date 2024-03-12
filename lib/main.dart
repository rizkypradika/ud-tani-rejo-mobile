import 'package:flutter/material.dart';
import 'package:project_mobile/splash_screen/splash_screen.dart';

// import file splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ganti Splash Screen menjadi halaman awal
      home: SplashScreen(),
    );
  }
}