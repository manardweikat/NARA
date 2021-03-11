

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
      home: Astronomy(),
    );
  }
}
class Astronomy extends StatefulWidget {
  @override
  _AstronomyState createState() => _AstronomyState();
}

class _AstronomyState extends State<Astronomy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(213, 126, 91, 1),
        title: Text('Astronomy & Horoscopes News'),
      ),
    );
  }
}

