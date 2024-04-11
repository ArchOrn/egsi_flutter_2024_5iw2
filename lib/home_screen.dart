import 'package:flutter/material.dart';
import 'package:flutter_5iw2/red_square.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView.separated(
          itemBuilder: (context, index) {
            return const RedSquare();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: 100000,
        ),
      ),
    );
  }
}
