import 'package:flutter/material.dart';
import 'package:flutter_5iw2/calendar/calendar_screen.dart';
import 'package:flutter_5iw2/home/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        final args = settings.arguments;
        switch (settings.name) {
          case '/calendar':
            return MaterialPageRoute(builder: (context) {
              return CalendarScreen(username: args as String);
            });
          default:
            return null;
        }
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
