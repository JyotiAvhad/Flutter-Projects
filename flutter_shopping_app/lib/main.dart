import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        fontFamily: 'Varela;;',
        primaryColor: Color(0xFF111111),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFABB6AE),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Color(0xFFFFFFFF),
        ),
        backgroundColor: Color(0xFFF5F5F5),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
