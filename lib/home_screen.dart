import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color startColor;
  final Color nextColor;

  const HomeScreen({super.key, this.startColor = Colors.blue, this.nextColor = Colors.green});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? _color;


  @override
  void initState() {
    super.initState();
    _color = widget.startColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: Material(
            color: _color,
            child: InkWell(
              onTap: () {
                setState(() {
                  _color = _color == widget.startColor ? widget.nextColor : widget.startColor;
                });
              },
            ),
          ),
        ),
        // child: GestureDetector(
        //   onTap: () {
        //     print('Click me!');
        //   },
        //   child: Container(
        //     width: 50,
        //     height: 50,
        //     color: Colors.red,
        //   ),
        // ),
      ),
    );
  }
}
