import 'package:flutter/material.dart';
import 'package:library_kelaniya/main_control.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    title: 'Library',
    theme: new ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.lightBlue[900],
        backgroundColor: Colors.white),
    home: LibraryApp(),
  ));
}

class LibraryApp extends StatefulWidget {
  @override
  _LibraryAppState createState() => _LibraryAppState();
}

class _LibraryAppState extends State<LibraryApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Tabs()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(15.0),
            child: new Container(
              height: 175.0,
              width: 175.0,
              child: new Image.asset('assets/kelaniya.png'),
            ),
          ),
          Text(
            'Welcome to Univeristy of Kelaniya Library ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]),
          ),
        ],
      )),
    );
  }
}
