import 'package:change_lenguaje/src/presenter/title_presenter.dart';
import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:change_lenguaje/view.dart' ;


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'MVP botons',
      theme: new ThemeData.dark(),
      home: new LenguageMenu(new BasicTitlePResenter()),
    );
  }
}