import 'package:flutter/material.dart';

void main(){
  runApp(ContentWidget());
}

class ContentWidget extends StatefulWidget {
  ContentWidget(){
        print('第一');
  }
 @override
  State<StatefulWidget> createState() {
    print('第二');
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int count = 0;
  ContentWidgetState(){
    print('第三');
  }

  @override
  void initState(){
    super.initState();
    print('第四');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('第五');
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('第六');
  }

  @override
  Widget build(BuildContext context) {
    print('第七');
    return MaterialApp(
      title: 'gaoxin',
      home: Scaffold(
        appBar: AppBar(
          title: Text('你好'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                     setState(() {
                       count++;
                     });
                },
                child: Text('数字+'),
              ),
              Text('数字:$count')
            ],
          ),
        ),
      ),
    );
  }
}