import 'package:flutter/material.dart';
import 'package:flutter_catalog/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pie = 3.14;
    bool ismale = true;
    num temp = 30.5;

    var day = "Tuesday"; // var can be used to define any type of variable
    const pi = 3.14;
    final piu =
        789; //new values can be added or modified in final but values of const cannot be changed

    return MaterialApp(
      home: HomePage(),
    );
  }
}
