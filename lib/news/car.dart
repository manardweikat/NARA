

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
      home: Car(),
    );
  }
}
class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 9, 93, 1),
        title: Text('Cars News'),
      ),
    );
  }
}

