import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('UD Tani Rejo Mobile'),
      ),
      body: const Center(
        child: Text('Welcome to UD Tani Rejo Mobile'),
        )
      );
  }
}
