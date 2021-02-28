import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'SignInPage.dart';
import 'NewsMain.dart';
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
        backgroundColor: Colors.redAccent,
        title: const Text('NAR App'),
        leading: Builder( builder: (context){return IconButton(icon: Icon(Icons.menu), onPressed: (){Scaffold.of(context).openDrawer();},);},),
       actions: <Widget>[Builder( builder: (context){return IconButton(icon: Icon(Icons.filter_list), onPressed: (){Scaffold.of(context).openEndDrawer();},);},)],),
      //),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.redAccent,
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
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Sign-up'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Sign-out'),
            ),
          ],
        ),
      ),


      endDrawer:ListView(

          padding: const EdgeInsets.fromLTRB(190, 60, 20, 20),
          children: <Widget>[
            Container(
              height:25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Politics News',style: TextStyle(color: Colors.teal),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Economic News',style: TextStyle(color: Color.fromRGBO(255, 121, 120, 1),),)),
            ),
            Container(
              height:25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Health News',style: TextStyle(color: Color.fromRGBO(51, 200, 204, 1)),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Education News',style: TextStyle(color: Color.fromRGBO(220, 255, 0, 1),),)),
            ),
            Container(
              height:25,
              width: 100,
              color: Colors.white,
              child: const Center(child: Text('Science & Technology News',style: TextStyle(color: Color.fromRGBO(60, 74, 255, 1)),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Arts & Fashion News',style: TextStyle(color: Color.fromRGBO(187, 32, 64,1),),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Sport News',style: TextStyle(color: Color.fromRGBO(0, 230, 0, 1),),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Cars News',style: TextStyle(color: Color.fromRGBO(255, 9, 93, 1),),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Travel News',style: TextStyle(color: Color.fromRGBO(10, 255, 200, 1),),)),
            ),
            Container(
              height: 25,
              width: 40,
              color: Colors.white,
              child: const Center(child: Text('Astronomy & Horoscopes News',style: TextStyle(color: Color.fromRGBO(213, 126, 91, 1),),)),
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
    )





    );
  }
}
