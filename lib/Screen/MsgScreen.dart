import 'package:flutter/material.dart';

class MsgScreen extends StatelessWidget {
  const MsgScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('消息'),
      ),
      body: Center(
        child: new Text('消息'),
      ),
    );
  }
}
