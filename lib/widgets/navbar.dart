import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedFontSize: 10.0,
      unselectedFontSize: 10.0,
      selectedItemColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Store',
          icon: Icon(Icons.store_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Library',
          icon: Icon(Icons.library_music_outlined),
        ),
         BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(Icons.account_circle_outlined),
        ),
      ]
    );
  }
}