import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app1/categories.dart';
import 'package:flutter_app1/news/astronomy&horoscopes.dart';
import 'package:flutter_app1/news/economic.dart';
import 'package:flutter_app1/news/education.dart';
import 'package:flutter_app1/news/health.dart';
import 'package:flutter_app1/news/science&technology.dart';
import 'package:flutter_app1/news/travel.dart';
import 'package:flutter_app1/main.dart';
import 'SignInPage.dart';
import 'NewsMain.dart';
import 'main.dart';
import 'news/art&fashion.dart';
import 'news/car.dart';
import 'news/politics.dart';
import 'news/sport.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        title: const Text('NAR App',style: TextStyle(color:Color.fromRGBO(255, 138, 128, 1),fontWeight: FontWeight.bold,fontSize: 27)),
        centerTitle: true,
        leading: Builder( builder: (context){return IconButton(icon: Icon(Icons.menu,color: Color.fromRGBO(255, 138, 128, 1),), onPressed: (){Scaffold.of(context).openDrawer();},);},),
       actions: <Widget>[Builder( builder: (context){return IconButton(icon: Icon(Icons.filter_list), onPressed: (){Scaffold.of(context).openEndDrawer();},);},)],
      elevation: 0.0,
      ),
      //),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: Text(
                'NARA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),

            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            /*ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Sign-up'),
            ),*/
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Sign-out'),
              onTap:(){
               Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignIn()));
              },
            ),
          ],
        ),
      ),


      endDrawer:ListView(
        padding: const EdgeInsets.fromLTRB(190, 60, 20, 20),
          children: <Widget>[
             GestureDetector(
               onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Politics()));
                },
            child: Container(
              height:25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Politics News',style: TextStyle(color: Colors.teal),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Economic()));
              },
             child:Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Economic News',style: TextStyle(color: Color.fromRGBO(255, 121, 120, 1),),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Health()));
              },
              child:Container(
              height:25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Health News',style: TextStyle(color: Color.fromRGBO(51, 200, 204, 1)),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Education()));
              },
              child:Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Education News',style: TextStyle(color: Color.fromRGBO(220, 255, 0, 1),),)),
            ),
             ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScienceTechnology()));
              },
              child:Container(
              height:25,
              width: 100,
              color: Colors.white,
              child: const Center(child: Text('Science & Technology News',style: TextStyle(color: Color.fromRGBO(60, 74, 255, 1)),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ArtFashion()));
              },
              child:Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Arts & Fashion News',style: TextStyle(color: Color.fromRGBO(187, 32, 64,1),),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sport()));
              },
              child:Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Sport News',style: TextStyle(color: Color.fromRGBO(0, 230, 0, 1),),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car()));
              },
              child:
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Cars News',style: TextStyle(color: Color.fromRGBO(255, 9, 93, 1),),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Travel()));
              },
              child:
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Travel News',style: TextStyle(color: Color.fromRGBO(10, 255, 200, 1),),)),
            ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Astronomy()));
              },
              child:
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Astronomy & Horoscopes News',style: TextStyle(color: Color.fromRGBO(213, 126, 91, 1),),)),
            ),
            ),
          ],

        ),


      body:SingleChildScrollView(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          //politics
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
            color: Colors.teal,
                 child: RichText(
                text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: 'Politics News \n',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

        ),
        TextSpan(text: 'Politics'),
      ],
    ),
    ),
        //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //economic   213, 126, 91, 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(255, 121, 120, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Economic News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //health
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(51, 200, 204, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Health News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //education
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(230, 255, 0, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Education News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //science & tech
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(60, 74, 255, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Science & Technology News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //art
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(187, 32, 64,1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Arts & Fashion News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //sport
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(0, 230, 0, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sport News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //Cars
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(255, 9, 93, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Cars News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //travel
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(10, 255, 200, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Travel News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
          //astronomy & horoscopes
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(padding: EdgeInsets.fromLTRB(20, 20, 50, 30),
              color: Color.fromRGBO(213, 126, 91, 1),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Astronomy & Horoscopes News \n',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),

                    ),
                    TextSpan(text: 'new'),
                  ],
                ),
              ),
              //    child: Text('Politics News\n',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,maxLines: 4,),
            ),
          ),
        ],
      ),
    ),
     bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
    label: 'Home',
     ),
    BottomNavigationBarItem(
    icon: Icon(Icons.filter_list),
    label: 'Categories',
    ),
    ],

    currentIndex: _selectedIndex,
    selectedItemColor: Colors.redAccent,
    onTap: _onItemTapped,


    ),

    );
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      if(_selectedIndex ==0) Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
      else Navigator.push(context,MaterialPageRoute(builder: (context)=>Categories()));

    });
  }
}
