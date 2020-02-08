import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(
  title: 'hello world',
  home: Scaffold(
    appBar: AppBar(
      title: Text('flutter App'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: FormValue(),
    ),
  ),
));



class FormValue extends StatefulWidget {
  FormValue({Key key}) : super(key: key);

  State<StatefulWidget> createState() {
    return FormValueState();
  }
}

class FormValueState extends State<FormValue> {
  String userName;
  String possworld;

  final registerFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Form(
         key: registerFormKey,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: '用户名'
                ),
                onSaved: (value){
                   this.userName = value;
                },
                validator: (value){
                  if(value == null || value.length == 0){
                    return '请输入用户名';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText:true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: '密码'
                ),
                onSaved: (value){
                   this.possworld = value;
                },
                validator: (value){
                  if(value == null || value.length == 0){
                    return '请输入密码';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              Container(
                width: double.infinity,
                color: Colors.orange,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.orange,
                  child: Text('注册',style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  onPressed: (){
                    registerFormKey.currentState.save();
                    registerFormKey.currentState.validate();
                    print('$userName $possworld');
                  },
                ),
              )
           ],
         ),
       ),
    );
  }
}