import 'package:flutter/material.dart';

class HavaDurumuScreen extends StatelessWidget {
  const HavaDurumuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hava Durumu'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Hava Durumu Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


