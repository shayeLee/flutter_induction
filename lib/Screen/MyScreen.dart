import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: Center(
        child: new Text('我的'),
      ),
    );
  }
}
