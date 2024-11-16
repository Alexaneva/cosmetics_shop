import 'package:cosmetics_shop/screens/profile_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'catalog_page/catalog_page.dart';
import 'home_page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const CatalogPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Каталог'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Корзина'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
        ],
        selectedLabelStyle:  TextStyle(color: Colors.grey[900]),
        unselectedLabelStyle:  TextStyle(color: Colors.grey[500]),
        selectedItemColor: Colors.grey[900],
        unselectedItemColor: Colors.grey[500],
      ),
    );
  }
}
