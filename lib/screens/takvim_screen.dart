import 'package:flutter/material.dart';

class TakvimScreen extends StatelessWidget {
  const TakvimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Takvim'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Takvim Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
