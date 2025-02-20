import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const DrawerMenu({
    Key? key,
    required this.onItemTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF388E3C), // Koyu yeşil zemin
      child: ListView(
        children: [
          // Üstte profil alanı
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF388E3C), // Koyu yeşil
            ),
            child: Text(
              'Tarım Dostunuz',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text('Profil', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Profil ekranına yönlendirme yapılabilir.
              Navigator.pop(context);
            },
          ),
          const Divider(),
          // Orta kısım: navigasyon öğeleri
          ListTile(
            title: const Text('Bilgiler', style: TextStyle(color: Colors.white)),
            onTap: () {
              onItemTapped(5);
              Navigator.pop(context);
            },
            selected: selectedIndex == 5,
          ),
          ListTile(
            title: const Text('Yapılacaklar', style: TextStyle(color: Colors.white)),
            onTap: () {
              onItemTapped(6);
              Navigator.pop(context);
            },
            selected: selectedIndex == 6,
          ),
          ListTile(
            title: const Text('Malzemeler', style: TextStyle(color: Colors.white)),
            onTap: () {
              onItemTapped(7);
              Navigator.pop(context);
            },
            selected: selectedIndex == 7,
          ),
          ListTile(
            title: const Text('Takvim', style: TextStyle(color: Colors.white)),
            onTap: () {
              onItemTapped(8);
              Navigator.pop(context);
            },
            selected: selectedIndex == 8,
          ),
          ListTile(
            title: const Text('Hava Durumu', style: TextStyle(color: Colors.white)),
            onTap: () {
              onItemTapped(9);
              Navigator.pop(context);
            },
            selected: selectedIndex == 9,
          ),
          const Divider(),
          // En alt kısım: iletişim bilgileri
          ListTile(
            title: const Text('Destek: tarimdestek@example.com', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Email açma işlemi yapılabilir.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Telefon: 123-456-7890', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Telefon açma işlemi yapılabilir.
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
