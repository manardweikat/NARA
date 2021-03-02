

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
      home: Economic(),
    );
  }
}
class Economic extends StatefulWidget {
  @override
  _EconomicState createState() => _EconomicState();
}

class _EconomicState extends State<Economic> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

