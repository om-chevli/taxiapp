import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: MaterialButton(
          height: 50,
          minWidth: 300,
          color: Colors.green,
          child: Text('Test'),
          onPressed: () {
            DatabaseReference dbref =
                FirebaseDatabase.instance.reference().child('Test2');
            dbref.set('IsConnected!');
          },
        ),
      ),
    );
  }
}
