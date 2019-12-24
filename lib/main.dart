import 'package:flutter/material.dart' show runApp;
import 'package:mvc_application/mvc.dart' show App;
import 'package:change_lenguaje/view.dart' ;
import 'package:mvc_application/src/view/app.dart';

void main() => runApp(MyApp());

class MyApp extends App{
  @override
  AppView createView() => LenguageOptions();

}