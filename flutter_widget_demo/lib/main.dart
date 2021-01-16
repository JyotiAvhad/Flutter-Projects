import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
////    return MaterialApp(home:Text('Neosoft Technology'),);
//  return MaterialApp (
//    home: Scaffold (
//      appBar: AppBar(
//        title: Text('Neosoft Technology')
//      ),
//      body: Text('I am Employee of Neosoft Technology'),
//    )
//  );
//  }
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Neosoft Technology',
    theme: ThemeData (
      primarySwatch: Colors.deepPurple,
    ),
    home: MyHomePage(title: 'Neosoft Home Page after Splash Screen'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}):super(key:key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text('I am Employee of Neosoft Technology'),
      ),
    );
  }
}