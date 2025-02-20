import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;
  final GlobalKey<NavigatorState>? navKey; // Opsiyonel olarak eklenmiş

  const NavBar({
    Key? key,
    required this.currentIndex,
    required this.onTabSelected,
    this.navKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabSelected,
      backgroundColor: const Color.fromARGB(255, 156, 97, 20),
      selectedItemColor: const Color.fromARGB(255, 0, 245, 12),
      unselectedItemColor: const Color.fromARGB(153, 8, 0, 0),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_florist),
          label: 'Bitkilerim',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Dersler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_album),
          label: 'Galeri',
        ),
      ],
    );
  }
}
