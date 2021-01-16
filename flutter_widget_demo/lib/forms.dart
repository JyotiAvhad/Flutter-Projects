import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Creating main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Form";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),

        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  // create here a global key which will uniquely identifies a form widget and allows its validation
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              errorStyle:  TextStyle(
                fontSize: 20.0,
                color: Colors.yellowAccent,
              ),
              icon: const Icon(Icons.person),
              hintText: 'Enter your UserName Here',
              labelText:'Name',
            ),
            validator: (value) {
              if(value.isEmpty) {
                return 'Please Enter a valid UserName';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your Phone Number Here',
              labelText:'Phone',
            ),
            validator: (value) {
              if(value.isEmpty) {
                return 'Please Enter a valid Phone Number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your DOB Here',
              labelText:'Dob',
            ),
            validator: (value) {
              if(value.isEmpty) {
                return 'Please Enter a valid date';
              }
              return null;
            },
          ),

          new Container(
            padding: const EdgeInsets.only(left: 150.0, top:40.0),
            child: new RaisedButton(
              child: const Text('Submit'),
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data is Valid')));
                }
              },
            )
          ),
        ],
      )
    );
  }
}