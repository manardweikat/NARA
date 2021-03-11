

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
      home: Politics(),
    );
  }
}
class Politics extends StatefulWidget {
  @override
  _PoliticsState createState() => _PoliticsState();
}

class _PoliticsState extends State<Politics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Politics News'),
      ),
    );
  }
}

