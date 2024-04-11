import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisExtent: 400,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          },
          itemCount: 100000,
        ),
      ),
    );
  }
}
