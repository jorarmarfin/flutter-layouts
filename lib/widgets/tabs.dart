import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'Tab1'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'Tab 2'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'Tab 3'),
      ],
    );
  }
}
