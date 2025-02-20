import 'package:flutter/material.dart';
import 'bitkilerim_screen.dart';
import 'hava_durumu_screen.dart';
import 'takvim_screen.dart';
import 'hesabim_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screens = [
    const Center(child: Text('Ana Sayfa')),
    const BitkilerimScreen(),
    const HesabimScreen(),
    const TakvimScreen(),
  ];

  void _onTabSelected(int index) {
    if (index >= 0 && index < _screens.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _onCameraPressed() => print('Kamera açılıyor...');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Scaffold key ekledik
      appBar: AppBar(
        title: const Text('Tarım Dostunuz'),
        backgroundColor: const Color.fromARGB(255, 156, 97, 20), // Yeşil renk
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Menü açılıyor
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        type: BottomNavigationBarType.fixed, // Sabit tip ekledik
        backgroundColor: const Color.fromARGB(255, 156, 97, 20), // Yeşil
        selectedItemColor: const Color.fromARGB(255, 9, 77, 0), // Kahverengi
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Beyaz
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.local_florist), label: 'Bitkilerim'),
          BottomNavigationBarItem(icon: Icon(Icons.wb_sunny), label: 'Hava Durumu'),
          BottomNavigationBarItem(icon:  Icon(Icons.person), label: 'Profil'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onCameraPressed,
        child: const Icon(Icons.camera),
        backgroundColor: const Color(0xFF388E3C),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        backgroundColor: const Color(0xFF388E3C), // Menü arka planı yeşil
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF388E3C), // Header yeşil olacak
              ),
              child: Text(
                'Tarım Dostunuz',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Ana Sayfa', style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Dersler', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tarım Kredisi', style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Takvim', style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Malzemeler', style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Galeri', style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Yapılacaklar', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Destek: tarimdestek@example.com', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Email açma işlemi yapılabilir.
              },
            ),
            ListTile(
              title: const Text('Telefon: 123-456-7890', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Telefon açma işlemi yapılabilir.
              },
            ),
          ],
        ),
      ),
    );
  }
}
