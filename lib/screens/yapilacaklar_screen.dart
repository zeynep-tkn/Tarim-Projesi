import 'package:flutter/material.dart';

class YapilacaklarScreen extends StatelessWidget {
  const YapilacaklarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yapılacaklar'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Yapılacaklar Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
