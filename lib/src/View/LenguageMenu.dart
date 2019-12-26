
import 'package:change_lenguaje/src/presenter/title_presenter.dart';
import 'package:flutter/material.dart';
import '../../view.dart' show AppMenu, stateMVC;
import '../../controller.dart' show Controller;

class LenguageMenu extends StatefulWidget {

  final TittlePresenter presenter;
  final String title;

  LenguageMenu(this.presenter, {Key key, this.title}) : super(key: key);

  @override
  _LenguageMenuState createState() => new _LenguageMenuState();
}

String btn1= "v0";
String btn2 = "v1";
String btn3 = "v2";

//List<String> titleBotons = ["v0", "v1", "v2"];
String pal = "no";

class _LenguageMenuState extends State<LenguageMenu> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text(btn1), onPressed: (){
            /*setState((){
              //titleBotons.clear();
              List<String> titleBotons =con.DatosEsp();
              btn1 = titleBotons[0];
              btn2 = titleBotons[1];
              btn3 = titleBotons[2]

            });;*/

            widget.presenter.onButtonClicked();

          },),
          RaisedButton(child: Text(btn2),
          onPressed: (){

          },),
          RaisedButton(child: Text(btn3),
          onPressed: (){

          },
          )
        ],
      ),
    );
  }
}
