import 'package:flutter/material.dart';

class TarimKredisiScreen extends StatelessWidget {
  const TarimKredisiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarım Kredisi'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Tarım Kredisi Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
