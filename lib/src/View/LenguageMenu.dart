
import 'package:flutter/material.dart';
import 'package:mvc_application/app.dart' show App;
import 'package:mvc_application/view.dart' ;
import '../../view.dart' show AppMenu, stateMVC;
import '../../controller.dart' show Controller;

class LenguageMenu extends StatefulWidget {

  @override

  _LenguageMenuState createState() => _LenguageMenuState();
}

List<String> titleBotons = new List<String>();
String pal = "no";

class _LenguageMenuState extends StateMVC<LenguageMenu> {

  _LenguageMenuState ():super(Controller()){
    con = controller;
  }

  Controller con;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ChangeLenguaje"),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text(pal), onPressed: (){
            setState((){

              String miaux= con.DatosEsp();
              pal=miaux;

              //titleBotons.clear();
              //titleBotons.addAll(con.DatosEsp());
            });
          },),
          /*RaisedButton(child: Text("Na"),
          onPressed: (){
            setState((){
              //titleBotons.clear();
              //titleBotons = con.DatosEsp();
            });
          },),
          RaisedButton(child: Text("NA"),
          onPressed: (){
            setState((){
              //titleBotons.clear();
              //titleBotons = con.DatosEsp();
            });
          },
          )*/
        ],
      ),
    );
  }
}
