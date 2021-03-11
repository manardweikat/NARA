

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
      home: ArtFashion(),
    );
  }
}
class ArtFashion extends StatefulWidget {
  @override
  _ArtFashionState createState() => _ArtFashionState();
}

class _ArtFashionState extends State<ArtFashion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(187, 32, 64,1),
        title: Text('Arts & Fashion News'),
      ),
    );
  }
}

