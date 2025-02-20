
import 'package:flutter/material.dart';

class DerslerScreen extends StatelessWidget {
  const DerslerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dersler'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Dersler Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
