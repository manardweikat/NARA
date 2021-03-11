

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../categories.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sport(),
    );
  }
}
class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 230, 0, 1),
        title: Text('Sport News'),
      ),
    );
  }
}

