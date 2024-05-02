import 'package:flutter/material.dart';
import 'package:flutter_5iw2/calendar/calendar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Home screen',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () => CalendarScreen.navigateTo(context),
                child: const Text('Go!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
