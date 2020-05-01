import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'navigation_bloc.dart';

class UserprofilePage extends StatefulWidget with NavigationStates {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<UserprofilePage> {
  var flag=0;
  bool heyflag=false;
  File _image;
  final controller1 = TextEditingController(text:"Look for the bare necessities The simple bare necessities Forget about your worries and your strife");
  final controller2 = TextEditingController(text:"Look for the bare necessities The simple bare necessities Forget about your worries and your strife");
  final controller3 = TextEditingController(text:"Look for the bare necessities The simple bare necessities Forget about your worries and your strife");
  final controller4 = TextEditingController(text:"Look for the bare necessities The simple bare necessities Forget about your worries and your strife");
  final controller5 = TextEditingController(text:"Look for the bare necessities The simple bare necessities Forget about your worries and your strife");
  final controller6 = TextEditingController(text:"TIGER");
  final controller7 = TextEditingController(text:"Man Eater");

  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
  }


  Future getImage() async {

    var image = await ImagePicker.pickImage(source: ImageSource.gallery);


    setState(() {
      _image = image;
    });
  }
  Future getendis() async {
    flag=(flag+1)%2;
    setState(() {
      if(flag==0){
        heyflag=false;}
      else{ heyflag=true;}
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(26.0,40,10,10),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
                            child: GestureDetector(
                              onLongPress: getImage,
                              child: CircleAvatar(
                                backgroundColor: Colors.white70,
                                radius: 50.0,
                                child: _image == null? Icon(Icons.photo_camera): null,
                                backgroundImage: _image == null? null: FileImage(_image),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30.0,0,0,0),
                            child: Column(
                                children:<Widget>[ Container(
                                  width:123.9,
                                  child: TextField(

                                    enabled: heyflag == null? null: heyflag,
                                    autofocus: true,
                                    controller: this.controller6,

                                    decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none),
                                    style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      color: Colors.white,
                                      letterSpacing: 1.5,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                  Container(
                                    width:120,
                                    child: TextField(
                                      enabled: heyflag == null? null: heyflag,
                                      autofocus: true,
                                      controller: this.controller7,

                                      decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none),
                                      style: TextStyle(
                                        fontFamily: 'Notosans',
                                        color: Colors.white,
                                        letterSpacing: 1.5,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40.0,20,0,0),
                            child: FloatingActionButton(
                              mini:true  ,
                              backgroundColor: Colors.black87,
                              onPressed: () => getendis(),


                              child: Icon(Icons.edit),
                            ),
                          ),



                        ],
                      )
                  ),
                  Row(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,60,0,0),
                        child: Text("Attribute 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[50]),),
                      )

                    ],

                  ),
                  Row(
                    children:<Widget>[
                      new Flexible(
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink), maxLines: 4 ,
                          enabled: heyflag == null? null: heyflag,
                          autofocus: true,

                          controller: this.controller1,

                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                          //onSubmitted: (text) => {setState(() => {})},

                        ),

                      ),
                    ],

                  ),
                  Row(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,30,0,0),
                        child: Text("Attribute 2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[50]),),
                      )

                    ],

                  ),
                  Row(
                    children:<Widget>[
                      new Flexible(
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink), maxLines: 4 ,
                          enabled: heyflag == null? null: heyflag,
                          autofocus: true,
                          controller: this.controller2,

                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                          //onSubmitted: (text) => {setState(() => {})},

                        ),

                      ),
                    ],

                  ),
                  Row(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,30,0,0),
                        child: Text("Attribute 3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[50]),),
                      )

                    ],

                  ),
                  Row(
                    children:<Widget>[
                      new Flexible(
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink), maxLines: 4 ,
                          enabled: heyflag == null? null: heyflag,
                          autofocus: true,
                          controller: this.controller3,

                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                          //onSubmitted: (text) => {setState(() => {})},

                        ),

                      ),
                    ],

                  ),
                  Row(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,30,0,0),
                        child: Text("Attribute 4",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[50]),),
                      )

                    ],

                  ),
                  Row(
                    children:<Widget>[
                      new Flexible(
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink), maxLines: 4 ,
                          enabled: heyflag == null? null: heyflag,
                          autofocus: true,
                          controller: this.controller4,

                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                          //onSubmitted: (text) => {setState(() => {})},

                        ),

                      ),
                    ],

                  ),
                  Row(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0,30,0,0),
                        child: Text("Attribute 5",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[50]),),
                      )

                    ],

                  ),
                  Row(
                    children:<Widget>[
                      new Flexible(
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink), maxLines: 4 ,

                          enabled: heyflag == null? null: heyflag,
                          autofocus: true,
                          controller: this.controller5,

                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                          //onSubmitted: (text) => {setState(() => {})},

                        ),

                      ),
                    ],

                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//image_picker: ^0.6.5+1
