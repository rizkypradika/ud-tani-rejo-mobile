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
      debugShowCheckedModeBanner: false,
      title: 'UD TANI REJO MOBILE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Ganti Splash Screen menjadi halaman awal
      home: SplashScreen(),
    );
  }
}