import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const DrawerMenu({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 247, 245, 240), // Arka plan rengini değiştirdik
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 156, 97, 20),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Tarım Uygulaması',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Ana Menü
            const ListTile(
              leading: Icon(Icons.person, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Hesabım'),
            ),
            const ListTile(
              leading: Icon(Icons.local_florist, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Bitkilerim'),
            ),
            const ListTile(
              leading: Icon(Icons.wb_sunny, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Hava Durumu'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Takvim'),
            ),
            const ListTile(
              leading: Icon(Icons.school, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Dersler'),
            ),
            const ListTile(
              leading: Icon(Icons.monetization_on, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Tarım Kredisi'),
            ),
            const ListTile(
              leading: Icon(Icons.inventory, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Malzemeler'),
            ),
            // Yeni Menü Öğeleri
            const ListTile(
              leading: Icon(Icons.list, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Yapılacaklar'),
            ),
            const ListTile(
              leading: Icon(Icons.photo_album, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Galeri'),
            ),
            const ListTile(
              leading: Icon(Icons.info, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Bilgiler'),
            ),
            // Destek Bölümü
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Destek',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 156, 97, 20),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.email, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('E-posta: support@tarim.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Telefon: +90 123 456 78 90'),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline, color: Color.fromARGB(255, 156, 97, 20)),
              title: Text('Yardım & SSS'),
            ),
          ],
        ),
      ),
    );
  }
}
