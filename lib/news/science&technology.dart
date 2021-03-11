

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
      home: ScienceTechnology(),
    );
  }
}
class ScienceTechnology extends StatefulWidget {
  @override
  _ScienceTechnologyState createState() => _ScienceTechnologyState();
}

class _ScienceTechnologyState extends State<ScienceTechnology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(60, 74, 255, 1),
       title: Text('Science & Technology News'),
      ),
    );
  }
}

