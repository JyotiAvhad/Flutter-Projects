import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Creating main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Flutter Row Implementation"),
      ),
//      body: Row (
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children:<Widget>[
//          Container(
//            margin: EdgeInsets.all(12.0),
//            padding: EdgeInsets.all(8.0),
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(8),
//              color: Colors.green
//            ),
//            child: Text("Neosoft",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
//          ),
//          Container(
//            margin: EdgeInsets.all(12.0),
//            padding: EdgeInsets.all(8.0),
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8),
//                color: Colors.green
//            ),
//            child: Text("Java",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
//          ),
//          Container(
//            margin: EdgeInsets.all(12.0),
//            padding: EdgeInsets.all(8.0),
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8),
//                color: Colors.green
//            ),
//            child: Text("Flutter",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
//          ),

        body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green
            ),
            child: Text("Neosoft",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green
            ),
            child: Text("Java",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green
            ),
            child: Text("Flutter",style: TextStyle(color: Colors.yellowAccent,fontSize:25),),
          ),

        // Equally distributed Control widgets
        /*Expanded(
          child: RaisedButton(
            child: Text("Approve"),
            onPressed: () => null,
          ),
        ),
          Expanded(
            child: RaisedButton(
              child: Text("Reject"),
              onPressed: () => null,
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: Text("Cancel"),
              onPressed: () => null,
            ),
          ),*/
        ]
      )
    );
  }
}