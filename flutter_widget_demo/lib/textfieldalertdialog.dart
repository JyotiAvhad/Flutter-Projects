import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Alert Dialog Implementation";
    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData (
          primarySwatch: Colors.blue,
        ),
        home: TextFieldAlertDialog(),
        );
  }
}

class TextFieldAlertDialog extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField Alert Implementation'),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(hintText: 'TextField in Dialog'),
          ),
          actions: <Widget> [
            new FlatButton(
              child: new Text('SUBMIT'),
              onPressed: () {
                _textEditingController.clear();
                Navigator.of(context).pop();
                print(_textEditingController.value);
              },
            )
          ],
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert TextField Implementation'),
      ),
    body: Center(
      child: FlatButton(
        child: Text('show alert'),
        onPressed: () => _displayDialog(context),
      ),
    ),
    );
  }
}

