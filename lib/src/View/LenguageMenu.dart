import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';
import 'package:change_lenguaje/src/presenter/title_presenter.dart';
import 'package:flutter/material.dart';

class LenguageMenu extends StatefulWidget {

  final TittlePresenter presenter;

  LenguageMenu(this.presenter, {Key key, this.uriImagen}) : super(key: key);


  final String uriImagen;


  @override
  _LenguageMenuState createState() => new _LenguageMenuState();
}

class _LenguageMenuState extends State<LenguageMenu> implements TitleView{

  TitleViewModel _titleViewModel;

  @override
  void initState(){
    super.initState();
    this.widget.presenter.titleView = this;
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
      appBar: AppBar(title: Text("Change Animal"),),
      body: Column(
        children: <Widget>[

          RaisedButton(child: Text("panda"),
            onPressed: (){
              widget.presenter.onButtonClicked("panda");
            },
          ),

          RaisedButton(child: Text("leon"),
            onPressed: (){
             widget.presenter.onButtonClicked("leon");
           },
          ),

          RaisedButton(child: Text("delfin"),
            onPressed: (){
              widget.presenter.onButtonClicked("delfin");
            },
          ),

          Image.network(this._titleViewModel.urlImage),

        ],
      ),
    );
  }

}
