import 'package:flutter/material.dart';
import 'bitkilerim_screen.dart';
import 'hesabim_screen.dart';
import 'hava_durumu_screen.dart';
import 'takvim_screen.dart';
import 'package:tarim_proje/widgets/drawer_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const BitkilerimScreen(),
    const HavaDurumuScreen(),
    const HesabimScreen(),
    const TakvimScreen(),
  ];

  final List<String> _titles = [
    'Bitkilerim',
    'Hava Durumu',
    'Hesabım',
    'Takvim',
  ];

  void _onTabSelected(int index) {
    if (index >= 0 && index < _screens.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        backgroundColor: const Color.fromARGB(255, 156, 97, 20),
        elevation: 0,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 156, 97, 20),
        selectedItemColor: const Color.fromARGB(255, 9, 77, 0),
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'Bitkilerim',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            label: 'Hava Durumu',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hesabım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Takvim',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Kamera açılıyor...'),
        child: const Icon(Icons.camera),
        backgroundColor: const Color(0xFF388E3C),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: DrawerMenu(
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context);
        },
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
