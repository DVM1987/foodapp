import 'package:flutter/material.dart';
import 'package:foodapp/config/const.dart';
import 'package:foodapp/pages/home/home_body.dart';

import 'pages/favorite/favorite_body.dart' show FavoriteBody;

import 'pages/seen/seen_body.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  // Lưu index của tab hiện tại

  final List<Widget> _pages = [HomeBody(), FavoriteBody(), SeenBody()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dColorMain,
        title: Text(
          'Good Food',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex, // Tab đang được chọn
        selectedItemColor: dColorButtonIsActive, // Màu khi được chọn
        onTap: _onItemTapped,
        backgroundColor: dColorMain,
        iconSize: sizeIconButton,
        unselectedItemColor: dColorButtonInActive,

        // Gọi hàm khi người dùng nhấn vào tab
      ),
    );
  }
}
