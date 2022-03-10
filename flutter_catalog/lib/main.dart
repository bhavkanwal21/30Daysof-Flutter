

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // build is a function of statlesswidget class which is overriden by MyApp class
    //double pie = 3.14;
   // bool ismale = true;
    //num temp = 30.5;

    //var day = "Tuesday"; // var can be used to define any type of variable
    //const pi = 3.14;
    //final piu =
        789; //new values can be added or modified in final but values of const cannot be changed

    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      //theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.black38),
      initialRoute: "/home", // sets HomePage as the intial Page of the app
      routes: {
        "/": ((context) =>
            LoginPage()), // LoginPage is a class. "/" sets the default first page ofthe app, provided intail route is not specified
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
