import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Creating main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Neosoft AppBar"),
      ),
//      body: Center(
//          child: Text("We have Pressed the Button $_count times"),
//      ),
      body: Container (
        height: 200,
        width: double.infinity,
        color: Colors.purple,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        child: Text("We have Pressed the Button $_count times",
        style: TextStyle(fontSize: 20)),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.blue,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            setState(() {
              _count++;
            }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
            children: <Widget>[
        UserAccountsDrawerHeader (
        accountName: Text('NeoSoft Technologies'),
        accountEmail: Text('neosoft@gmail.com'),
        currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.yellow,
        child: Text("abc"),
      ),
    ),
    ListTile (
    title: new Text("Inbox"),
    leading: new Icon(Icons.mail),
      onTap: () {
      print("Inbox clicked");
      },
    ),
    Divider(height: 0.1,),
    ListTile (
    title: new Text("Primary"),
    leading: new Icon(Icons.inbox),
      onTap: () {
        print("Primary clicked");
      },
    ),
    ListTile (
    title: new Text("Social"),
    leading: new Icon(Icons.people),
      onTap: () {
        print("Social clicked");
      },
    ),
    ListTile (
    title: new Text("Promotions"),
    leading: new Icon(Icons.local_offer),
      onTap: () {
        print("Promotions clicked");
      },
    )

    ],
    ),
    ),
    );
  }
}

