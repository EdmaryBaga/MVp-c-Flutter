import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';
import 'package:change_lenguaje/src/presenter/title_presenter.dart';
import 'package:flutter/material.dart';

class LenguageMenu extends StatefulWidget {

  final TittlePresenter presenter;

  LenguageMenu(this.presenter, {Key key, this.title, this.btn2}) : super(key: key);

  final String title;
  final String btn2;

  @override
  _LenguageMenuState createState() => new _LenguageMenuState();
}

class _LenguageMenuState extends State<LenguageMenu> implements TitleView{

  TitleViewModel _titleViewModel;

  @override
  void initState(){
    super.initState();
    this.widget.presenter.titleView=this;
  }

  @override
  void refreshTitle(TitleViewModel viewModel) {
    setState(() {
      this._titleViewModel = viewModel;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Change lenguaje"),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text(this._titleViewModel==null?widget.title : this._titleViewModel.title.toString()), onPressed: (){
            widget.presenter.onButtonClicked();
          },),

          RaisedButton(child: Text(this._titleViewModel==null?widget.btn2 : this._titleViewModel.btn2), onPressed: (){
            widget.presenter.onButtonClicked();
          },),

        ],
      ),
    );
  }

}
