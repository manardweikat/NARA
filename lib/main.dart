import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),//title:'Flutter Demo Home Page '),


    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin {
  List<Tab> _tabList=[
    Tab(child: Text("NEWS"),),
    Tab(child: Text("ARTICLES"),),
    Tab(child: Text("RESEARCHES"),),
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
   _tabController.dispose();
   super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        leading: IconButton(
          onPressed: (){
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(

                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
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
            );
          },
          icon: Icon(Icons.menu,color: Colors.white,),

        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text("NAR App",style: TextStyle(color: Colors.white),),

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.redAccent,
            isScrollable: true,
            labelColor: Colors.white,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),

      body:TabBarView(
        controller: _tabController,
        children:[
          Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(),
        ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          ],
        ),
      ) ;
  }
}


/*
return Scaffold(
appBar: AppBar(
title: const Text('NAR App'),
),
drawer: Drawer(
child: ListView(
padding: EdgeInsets.zero,
children: const <Widget>[
DrawerHeader(

decoration: BoxDecoration(
color: Colors.pinkAccent,
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

);
}*/