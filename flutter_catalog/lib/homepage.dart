import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Bhavkanwal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Yogic Lifestyle",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Container(
            child: Text(
                "Welcome to $days days of Flutter for $name ")), //String interpolation
      ),
      drawer: Drawer(),
    );
  }
}
