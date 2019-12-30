
import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';
import 'package:change_lenguaje/src/presenter/title_presenter.dart';
import 'package:flutter/material.dart';

class LenguageMenu extends StatefulWidget {

  final TittlePresenter presenter;

  LenguageMenu(this.presenter, {Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LenguageMenuState createState() => new _LenguageMenuState();
}

String btn1= "v0";



class _LenguageMenuState extends State<LenguageMenu> implements TitleView{

  TitleViewModel _titleViewModel;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(this._titleViewModel==null?widget.title : this._titleViewModel),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text(btn1), onPressed: (){
            widget.presenter.onButtonClicked();
          },),

        ],
      ),
    );
  }

  @override
  void refreshTitle(TitleViewModel viewModel) {
    setState(() {
      this._titleViewModel = viewModel;
    });
  }
}
