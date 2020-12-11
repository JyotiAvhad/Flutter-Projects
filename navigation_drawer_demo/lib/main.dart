import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Its Navigation Drawer Demo'),
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
            ),


            // UserAccountsDrawerHeader(
            //   accountName: Text("User"),
            //   accountEmail: Text("user@gmail.com"),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundColor:
            //         Theme.of(context).platform == TargetPlatform.android
            //             ? Colors.blue
            //             : Colors.white,
            //     child: Text(
            //       "User",
            //       style: TextStyle(fontSize: 50.0),
            //     ),
            //   ),
            // ),


            ListTile(
              title: Text('Home',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),


            ListTile(
              title: Text('About US'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),


            ListTile(
              title: Text('Logout'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogoutPage()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text('This is Home Page'),
      ),

    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('This is About Us Page'),
        ),
      ),
    );
  }
}

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logout"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('This is Logout Page'),
        ),
      ),
    );
  }
}

