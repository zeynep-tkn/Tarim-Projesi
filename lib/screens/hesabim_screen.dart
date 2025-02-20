import 'package:flutter/material.dart';

class HesabimScreen extends StatelessWidget {
  const HesabimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesabım'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Hesabım Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
