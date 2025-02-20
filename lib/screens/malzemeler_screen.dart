import 'package:flutter/material.dart';

class MalzemelerScreen extends StatelessWidget {
  const MalzemelerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malzemeler'),
        backgroundColor: const Color(0xFF388E3C),
      ),
      body: const Center(
        child: Text(
          'Malzemeler Sayfası',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
