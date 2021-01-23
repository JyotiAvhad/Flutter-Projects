
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController userNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Welcome to the Demo App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'enter your user id',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'enter your password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0)),
              child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: _navigateToHome),
            ),
            FlatButton(
              onPressed: _navigateToSignUp,
              child: Text(
                'New user? Create account',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  _navigateToHome() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  _navigateToSignUp() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
  }
}