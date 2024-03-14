import 'package:flutter/material.dart';
import 'package:flutter_5iw2/custom_theme.dart';
import 'package:flutter_5iw2/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CustomTheme(
        child: HomeScreen(),
      ),
      theme: ThemeData(
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Colors.amber,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}
