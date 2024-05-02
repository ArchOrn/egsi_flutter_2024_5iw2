import 'package:flutter/material.dart';
import 'package:flutter_5iw2/a.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const A();
                  },
                ));
              },
              child: const Text('Go to A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/b');
              },
              child: const Text('Go to B'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/c', arguments: 'Raphael');
              },
              child: const Text('Go to C'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/theend');
              },
              child: const Text('Go to 404'),
            ),
          ],
        ),
      ),
    );
  }
}
