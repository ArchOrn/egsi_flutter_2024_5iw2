import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            label: 'Today',
          ),
        ],
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
