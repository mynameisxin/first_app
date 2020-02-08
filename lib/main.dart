import 'package:flutter/material.dart';

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
    appBar: AppBar(
      title: Text('flutter App'),
    ),
    bottomNavigationBar: BottomNavigationBar(
      iconSize: 36,
      selectedFontSize: 24,
      unselectedFontSize: 20,
      currentIndex: _count,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('首页')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pages),
          title: Text('详情')
        )
      ],
      onTap: (int value){
        setState(() {
          _count = value;
        });
      },
    ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text('2222')
    ),
  );
  }
}