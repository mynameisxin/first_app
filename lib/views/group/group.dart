import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分组'),
        ),
        body: Center(
          child: Text('分组'),
        ),
    );
  }
}