import 'package:flutter/material.dart';
import 'package:flutter_induction/Screen/DiscoverScreen.dart';
import 'package:flutter_induction/Screen/IndexScreen.dart';
import 'package:flutter_induction/Screen/MsgScreen.dart';
import 'package:flutter_induction/Screen/MyScreen.dart';

// 暗号：初见Flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo1',
        theme: new ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: new Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //定义界面容器
  final List<Widget> _children = [
    IndexScreen(),
    MsgScreen(),
    DiscoverScreen(),
    MyScreen()
  ];

  int _currentIndex = 0;

  void onTabTapped(int selectIndex) {
    setState(() {
      _currentIndex = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        // selectedFontSize: ,
        // unselectedFontSize: ,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png", width: 24),
              activeIcon:
                  Image.asset("assets/images/home-active.png", width: 24),
              title: Text('首页')),
          new BottomNavigationBarItem(
              icon: Image.asset("assets/images/msg.png", width: 24),
              activeIcon:
                  Image.asset("assets/images/msg-active.png", width: 24),
              title: Text('消息')),
          new BottomNavigationBarItem(
              icon: Image.asset("assets/images/discover.png", width: 24),
              activeIcon:
                  Image.asset("assets/images/discover-active.png", width: 24),
              title: Text('发现')),
          new BottomNavigationBarItem(
              icon: Image.asset("assets/images/my.png", width: 24),
              activeIcon: Image.asset("assets/images/my-active.png", width: 24),
              title: Text('我的')),
        ],
      ),
    );
  }
}
