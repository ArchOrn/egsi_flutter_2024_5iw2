import 'package:flutter/material.dart';
import 'package:flutter_5iw2/calendar_screen.dart';
import 'package:flutter_5iw2/favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [
    ScreenDef(
      icon: Icons.favorite,
      label: 'Favorites',
      widget: const FavoritesScreen(),
    ),
    ScreenDef(
      icon: Icons.calendar_today,
      label: 'Today',
      widget: const CalendarScreen(),
    ),
    ScreenDef(
      icon: Icons.verified_user,
      label: 'Toto',
      widget: const FavoritesScreen(),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print('Hello World!');
          },
          icon: const Icon(
            Icons.airplanemode_on,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'My Title',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: screens[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        items: screens.map((e) {
          return BottomNavigationBarItem(
            icon: Icon(
              e.icon,
            ),
            label: e.label,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        onPressed: () {
          print('Ohhhhhh Clique!!!');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ScreenDef {
  final IconData icon;
  final String label;
  final Widget widget;

  ScreenDef({required this.icon, required this.label, required this.widget});
}
