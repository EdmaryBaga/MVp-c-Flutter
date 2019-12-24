import 'package:flutter/material.dart';
import 'package:mvc_application/mvc.dart' show ViewMVC;
import '../../view.dart' show LenguageMenu;


class LenguageOptions extends ViewMVC{
  LenguageOptions()
  :super(
    title:"Change Lenguage",
    routes: {},
    home: LenguageMenu()
  );

}