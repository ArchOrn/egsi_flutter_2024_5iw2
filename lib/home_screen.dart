import 'package:flutter/material.dart';
import 'package:flutter_5iw2/red_circle.dart';
import 'package:flutter_5iw2/red_square.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          ...List.generate(24, (index) {
                            return const RedCircle();
                          }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        color: Colors.amber,
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedCircle(),
                              SizedBox(width: 8),
                              RedCircle(),
                              Spacer(),
                              RedCircle(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                // const Positioned.fill(
                //   child: Center(
                //     child: RedSquare(),
                //   ),
                // ),
                // const Positioned.fill(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       RedSquare()
                //     ],
                //   ),
                // ),
                const Align(
                  alignment: Alignment.center,
                  child: RedSquare(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
