import 'package:flutter/material.dart';

class BitkilerimScreen extends StatelessWidget {
  const BitkilerimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bitkilerim'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Bitkilerim Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
