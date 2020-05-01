import 'package:flutter/material.dart';
import 'userprofilepage.dart';
import 'navigation_bloc.dart';
class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan
      ),
      home: MyHomePage(title: 'X Application'),
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
  var countryCodePicker;
  

  //int _counter = 0;
  

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
     // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    //var mobileNumber;
        return Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Center(
           // margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: ListView(
              children: <Widget>[
                Column(
               
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/mq1.jpg'
                  ),

                  // new Row(
                  //   children: <Widget>[
                  //     new Icon(
                  //       Icons.notifications_active,
                  //       color: const Color(0xFF224baa),
                  //       size: 110.0
                  //     )
                  //   ],
                  // ),
                  Image.asset(
                  'assets/images/ann2.jpg',
                  height: 230,
                  
                  ),
                 // mobileNumber,
              // countryCodePicker,
            // Text(
            //   'User Profile:',
            //    style: TextStyle
            //    (fontSize: 15, 
            //    height: 1.80),
               
            // ),
            /*
            Text(
              'The Vimana team has won 2nd place in XYZ.',
              style: TextStyle
               (fontSize: 15, 
               height: 1.80),
            ),
             Image.asset(
              'assets/images/ann1.jpg',
              //height: 150,
              ),*/
              // Image.asset(
              //   'assets/images/user-profile.png',
              //   height: 50,

              // ),
              // Image.asset(
              //   'assets/images/connect.png',
              //   height: 45,

              // ),
              // Image.asset(
              //   'assets/images/improve.png',
              //   height: 60,

              // ),
              // Image.asset(
              //   'assets/images/projects.png',
              //   height: 45,

              // ),
              // Image.asset(
              //   'assets/images/events.png',
              //   height: 45,

              // ),
              // Image.asset(
              //   'assets/images/online-learning.jpg',
              //   height: 45,

              // ),
              //  Image.asset(
              //      'assets/images/mq1.jpg',
              //      height: 200,
              //    ),
              //    Image.asset(
              //      'assets/images/ann1.jpg',
              //      height: 200,
              //    ),
            
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: const Icon(Icons.account_circle),
                        //onPressed:iconButtonPressed,
                        onPressed:  () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserprofilePage()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "User Profile",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      ),
    
                      new IconButton(
                        icon: const Icon(Icons.add_circle),
                        onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewActivity()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "Improve",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      )
                    ]
    
                  ),
    
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: const Icon(Icons.laptop),
                        onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewActivity()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "Learn Online",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      ),
    
                      new IconButton(
                        icon: const Icon(Icons.toys),
                        onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewActivity()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "Events",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      )
                    ]
    
                  ),
    
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: const Icon(Icons.book),
                        onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewActivity()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "Projects ",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      ),
    
                      new IconButton(
                        icon: const Icon(Icons.language),
                        onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewActivity()),
            );},
                        iconSize: 60.0,
                        color: const Color(0xFF000000),
                      ),
    
                      new Text(
                      "Connect",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto"),
                      )
                    ]
    
                  )
          
          ],
          
          
        ),

              ],
            ), 

            
      ),
     /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }
    void iconButtonPressed(){}
}

class NewActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Activity"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

