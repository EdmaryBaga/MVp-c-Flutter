
import 'package:flutter/material.dart';
import 'package:mvc_application/app.dart' show App;
import 'package:mvc_application/view.dart' ;
import '../../view.dart' show AppMenu, stateMVC;
import '../../controller.dart' show Controller;

class LenguageMenu extends StatefulWidget {

  @override

  _LenguageMenuState createState() => _LenguageMenuState();
}

String btn1= "v0";
String btn2 = "v1";
String btn3 = "v2";

//List<String> titleBotons = ["v0", "v1", "v2"];
String pal = "no";

class _LenguageMenuState extends StateMVC<LenguageMenu> {

  _LenguageMenuState ():super(Controller()){
    con = controller;
  }


  Controller con;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("MVC change"),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text(btn1), onPressed: (){
            setState((){
              //titleBotons.clear();
              List<String> titleBotons =con.DatosEsp();
              btn1 = titleBotons[0];
              btn2 = titleBotons[1];
              btn3 = titleBotons[2];

            });
          },),
          RaisedButton(child: Text(btn2),
          onPressed: (){
            setState((){
              List<String> titleBotons =  con.DatosFre();
              btn1 = titleBotons[0];
              btn2 = titleBotons[1];
              btn3 = titleBotons[2];
            });
          },),
          RaisedButton(child: Text(btn3),
          onPressed: (){
            setState((){
              List<String> titleBotons =con.DatosIng();
              btn1 = titleBotons[0];
              btn2 = titleBotons[1];
              btn3 = titleBotons[2];
            });
          },
          )
        ],
      ),
    );
  }
}
