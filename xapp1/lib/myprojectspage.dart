import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xapp1/project/model/database.dart';
import 'package:xapp1/project/pages/add_myproject_page.dart';
import 'package:xapp1/project/pages/myproject_page.dart';
import 'package:xapp1/project/pages/myprojects_page2.dart';
import 'package:xapp1/project/widgets/custom_button.dart';

import 'navigation_bloc.dart';

class MyProjectsPage extends StatelessWidget with NavigationStates {
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
    return MultiProvider(
      providers: [ChangeNotifierProvider<Database>(create: (_) => Database())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();

  double currentPage = 0;

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });

    return Scaffold(
      appBar: new AppBar(

        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: ()=> debugPrint("Hey"))
        ],
        title: new Text('Projects'),
        centerTitle: true,
        backgroundColor: Colors.blue,


      ),
      body: Stack(
        children: <Widget>[
                   _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    child: currentPage == 0 ? AddMyProjectPage() : AddMyProjectPage(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))));
              });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: _button(context),
        ),
        Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[MyProjectPage2(), MyProjectPage()],
            ))
      ],
    );
  }

  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: CustomButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceInOut);
              },
              buttonText: "All Projects",
              color:
              currentPage < 0.5 ? Theme.of(context).accentColor : Colors.white,
              textColor:
              currentPage < 0.5 ? Colors.white : Theme.of(context).accentColor,
              borderColor: currentPage < 0.5
                  ? Colors.transparent
                  : Theme.of(context).accentColor,
            )),
        SizedBox(
          width: 32,
        ),
        Expanded(
            child: CustomButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceInOut);
              },
              buttonText: "My Projects",
              color:
              currentPage > 0.5 ? Theme.of(context).accentColor : Colors.white,
              textColor:
              currentPage > 0.5 ? Colors.white : Theme.of(context).accentColor,
              borderColor: currentPage > 0.5
                  ? Colors.transparent
                  : Theme.of(context).accentColor,
            ))
      ],
    );
  }
}
