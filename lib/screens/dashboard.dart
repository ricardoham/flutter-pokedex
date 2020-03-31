import 'package:flutter/material.dart';

class Dashboad extends StatefulWidget {
  Dashboad({Key key}) : super(key: key);

  @override
  _DashboadState createState() => _DashboadState();
}

class _DashboadState extends State<Dashboad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter Pokedex!'),
      ),
      body: Container(
        child: Text('DASHBOARD'),
      ),
    );
  }
}
