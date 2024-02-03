import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _pageBackground(),
            _circularAnimation(),
          ],
        ),
      ),
    );
  }

  Widget _pageBackground() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _circularAnimation() {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("Tapped!");
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
