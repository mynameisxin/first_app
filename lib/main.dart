import 'package:flutter/material.dart';

<<<<<<< HEAD
void main () => runApp(MaterialApp(
  title: 'hello world',
  home: Scaffold(
    appBar: AppBar(
      title: Text('flutter App'),
    ),
    body: InputChange(),
  ),
));




class InputChange extends StatefulWidget {
  InputChange({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState(){
      return InputChangeState();
  }
}

class InputChangeState extends State<InputChange> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text='我是默认值';
    textEditingController.addListener((){
      print('监听到的值的改变${textEditingController.text}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     decoration: InputDecoration(
                       icon: Icon(Icons.people),
                       hintText: '请输入用户名',
                       border: OutlineInputBorder(borderSide: BorderSide(
                         width: 3,
                         color: Colors.red
                       )),
                     ),
                     onChanged: (value){
                         print('$value');
                     },
                     onSubmitted: (value){
                         print('$value');
                     },
                     controller: textEditingController
                  ),
                ),
              ],
            )
          );
  }
=======
void main(){
  runApp(Center(
    child:  Text('你好',textDirection:TextDirection.ltr,style: TextStyle(color: Colors.green,fontSize: 20.0),)
  ));
>>>>>>> f5273940b25719ed23c152db441962ec0775a5f5
}