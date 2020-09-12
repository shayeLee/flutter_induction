import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
      ),
      body: Center(
        child: new Text('首页'),
      ),
    );
  }
}
