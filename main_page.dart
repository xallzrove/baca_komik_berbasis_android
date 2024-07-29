import 'package:baca_komik_berbasis_android/pages/home_page.dart';
// import 'package:baca_komik_berbasis_android/pages/kategori_page.dart';
import 'package:baca_komik_berbasis_android/pages/profil_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _selectedPage = <Widget>[
    const HomePage(),
    // const KategoriPage(),
    const ProfilPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Beranda'),
        // BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Kategori'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profil'),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      
      ),
    );
  }
}