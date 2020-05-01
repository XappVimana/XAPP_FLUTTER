import 'package:flutter/material.dart';

import 'sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        primaryColor: Colors.white
      ),
      home: SideBarLayout(),
    );
  }
}
