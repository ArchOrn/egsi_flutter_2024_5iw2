import 'package:flutter/material.dart';
import 'package:flutter_5iw2/red_square.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const RedSquare(),
                ...List.generate(100, (index) {
                  return const Column(
                    children: [
                      SizedBox(height: 10),
                      RedSquare(),
                    ],
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
