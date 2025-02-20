import 'package:flutter/material.dart';

class BilgilerScreen extends StatelessWidget {
  const BilgilerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilgiler'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Bilgiler Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
