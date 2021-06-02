import 'package:cs_test/Tabs/HomeTab.dart';
import 'package:cs_test/Tabs/ProfileTab.dart';
import 'package:cs_test/Tabs/SearchTab.dart';
import 'package:cs_test/Tabs/SettingTab.dart';
import 'package:cs_test/Tabs/ShoppingTab.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CS TEST',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Top Rated'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _pages = <Widget>[
    HomeTab(),
    SearchTab(),
    ShoppingTab(),
    SettingTab(),
    ProfileTab(),
  ];

  GlobalKey bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.equalizer_sharp,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
        backgroundColor: Colors.white,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [..._pages],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 0,
        key: bottomNavigationKey,
        barBackgroundColor: Colors.white,
        textColor: Colors.white,
        inactiveIconColor: Colors.grey[400],
        activeIconColor: Colors.black,
        circleColor: Colors.white,
        tabs: [
          TabData(iconData: Icons.home_outlined, title: ""),
          TabData(iconData: Icons.search_outlined, title: ""),
          TabData(iconData: Icons.shopping_bag_outlined, title: ""),
          TabData(iconData: Icons.settings_outlined, title: ""),
        ],
        onTabChangedListener: (position) {
          setState(() {
            _selectedIndex = position;
          });
        },
      ),
    );
  }
}
