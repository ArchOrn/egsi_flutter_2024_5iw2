import 'package:flutter/material.dart';
import 'package:flutter_5iw2/custom_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child:  Text(
          'Hello',
          style: CustomTheme.of(context).textStyleXS,
        ),
      ),
    );
  }
}
