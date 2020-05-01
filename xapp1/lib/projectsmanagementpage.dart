import 'package:flutter/material.dart';

import 'navigation_bloc.dart';

class Projectsmgmt extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: Text("Project Management"),
        backgroundColor: Colors.transparent,

      ),
      body: new ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         new Container(
           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
           child: Text('Project Name',
           style: titleStyle()),
           alignment: Alignment.topCenter,
         ),
         
         new Container(
           margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
           child:RichText(
             text: new TextSpan(
             children: <TextSpan>[
               TextSpan(text: "This is the description of  the project. Here you will see what the project is about.\n New line? Still project description.\n Very big, very fancy\nOh my god such a big project description",
               style: TextStyle(color: Colors.white))
             ]),
             
             )
         ),
           
          new Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child:new Stack(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    
                  new Column(
                    children: <Widget>[
                      new Row(children: <Widget>[
                        new ClipOval(
            
                          child: Container(
                          
                            color: Colors.red[200],
                            //margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
                            height: 30.0,
                            width: 50.0,
                            child: Container(
                              alignment: Alignment.center,
                              child:Text('Domain 1',
                              style: domainStyle(),
                              textAlign: TextAlign.center,
                              ),
                          )
                        )
                        ),
                ],),
                
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        
                        new ClipOval(
            
                          child: Container(
                          
                            color: Colors.red[200],
                            //margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
                            height: 30.0,
                            width: 50.0,
                            child: Container(
                              alignment: Alignment.center,
                              child:Text('Domain 2',
                              style: domainStyle(),
                              textAlign: TextAlign.justify,
                              ),
                          )
                        )
                        ),
                ],

                
                
                ),
                
                
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        
                        new ClipOval(
            
                          child: Container(
                          
                            color: Colors.red[200],
                            //margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
                            height: 30.0,
                            width: 50.0,
                            child: Container(
                              alignment: Alignment.center,
                              child:Text('Domain 3',
                              style: domainStyle(),
                              textAlign: TextAlign.justify,
                              ),
                          )
                        )
                        ),
                ],

                
                
                ),
                
                
                    ],
                  ),
                ],)
              ]
            )
          ),
          new Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
           child:RichText(
             text: new TextSpan(
             children: <TextSpan>[
               TextSpan(text: "Applications\n➼ App 1\n➼ App 2\n➼ App 3",
               style: TextStyle(color: Colors.white))
             ]),
             
             )
         ),
          new Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            alignment: Alignment.centerLeft,
            child: RichText(text: TextSpan(
              text: "Current Status: ",
              style: TextStyle(color: Colors.deepPurple[100]),
              children: <TextSpan>[
                TextSpan(
                  text: "Ongoing",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold)
                )
              ]
            )),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Stack(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/timeline.png'),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),
                    
                    new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/progress.png'),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/assignments.png'),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),
                  ],
                )
              ],
            )
            
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(40, 20, 20, 0),
            child: Stack(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                     child: Text("Timeline", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                    new Container(
                     child: Text("Progress", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                    new Container(
                     child: Text("Assignments", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                  ],
                )
              ],
            )
            
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Stack(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/people.png'),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),
                    
                    new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/resource.png',width: 90,height: 95,),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),new Container(
                      height: 60,
                      width: 60,
                      child: new ClipOval(
                      
                      child: RaisedButton(
                        child: Image.asset('assets/images/discussion.png',),
                        color: Colors.deepPurple[200],
                        onPressed: ()=>{},
                        
                        ),
                      
                    ),
                    ),
                  ],
                )
              ],
            )
            
          ),

          new Container(
            margin: EdgeInsets.fromLTRB(50, 20, 20, 0),
            child: Stack(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                     child: Text("People", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                    new Container(
                     child: Text("\tResource\nHub", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                    new Container(
                     child: Text("Discussion\nForum", style:descStyle(),textAlign: TextAlign.center,)
                    ),
                    
                  ],
                )
              ],
            )
            
          ),
          
        ],
      ),
      );
    
        
        
    
  }
  TextStyle titleStyle(){
    return new TextStyle(
      color: Colors.deepPurple,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }
  TextStyle descStyle(){
    return new TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }
  TextStyle domainStyle(){
    return new TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 10,
      
      
    );
  }
}