import 'package:flutter/material.dart';
import 'package:first_app/components/tapbar_item.dart';
import 'package:first_app/views/group/group.dart';
import 'package:first_app/views/home/home.dart';
import 'package:first_app/views/mall/mall.dart';
import 'package:first_app/views/profile/profile.dart';
import 'package:first_app/views/subject/subject.dart';

void main () => runApp(MaterialApp(
  title: 'hello world',
  theme:ThemeData(
    primaryColor: Colors.green,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent
  ),
  home: FormValue()
));



class FormValue extends StatefulWidget {
  FormValue({Key key}) : super(key: key);

  State<StatefulWidget> createState() {
    return FormValueState();
  }
}

class FormValueState extends State<FormValue> {
  var _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      iconSize: 36,
      selectedFontSize: 24,
      unselectedFontSize: 20,
      currentIndex: _count,
      type: BottomNavigationBarType.fixed,
      items: [
       TapBarItem('assets/images/1.jpg','assets/images/2.jpg','首页'),
       TapBarItem('assets/images/1.jpg','assets/images/2.jpg','书影音'),
       TapBarItem('assets/images/1.jpg','assets/images/2.jpg','小组'),
       TapBarItem('assets/images/1.jpg','assets/images/2.jpg','市集'),
       TapBarItem('assets/images/1.jpg','assets/images/2.jpg','我的'),
      ],
      onTap: (int value){
        setState(() {
          _count = value;
        });
      },
    ),
    body: IndexedStack(
      index:_count ,
      children: <Widget>[
         Home(),
         Subject(),
         Group(),
         Profile(),
         Mall()
      ],
    )
  );
  }
}