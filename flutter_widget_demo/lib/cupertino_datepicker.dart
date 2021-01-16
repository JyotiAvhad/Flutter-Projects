import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Kindacode.com",
      theme: CupertinoThemeData(
          primaryColor: Color.fromARGB(255, 10, 10, 255), // primary color
          primaryContrastingColor:
          Color.fromARGB(255, 100, 100, 255), // accent color
          barBackgroundColor:
          Color.fromARGB(255, 255, 100, 100) // navigation bar background
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigation bar
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Date Picker'),
      ),

      // some simple widgets
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // iOS-style button
            CupertinoButton(
              child: Text(
                'A Cupertino Button',
              ),
              color: Color.fromARGB(255, 10, 255, 255),
              onPressed: () {},
            ),

            SizedBox(height: 20),

            // A Cupertino Text Field
            CupertinoTextField(placeholder: "iOS-style text field",),

            // an iOS-style time picker
            CupertinoTimerPicker(onTimerDurationChanged: (pickedTime) {
              print(pickedTime);
            })
          ],
        ),
      ),
    );
  }
}