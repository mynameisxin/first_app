import 'package:flutter/material.dart';

class TapBarItem extends BottomNavigationBarItem{
  TapBarItem(String name,String activeName,String title):super(
    icon:Image.asset(name,width: 30,),
    activeIcon:Image.asset(activeName,width: 30,),
    title:Text(title)
  );
}