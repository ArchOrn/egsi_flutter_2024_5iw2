import 'package:flutter/material.dart';

class RedSquare extends StatelessWidget {
  const RedSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.red,
    );
  }
}