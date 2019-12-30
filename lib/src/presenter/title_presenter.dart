import 'package:change_lenguaje/src/Model/Spanish.dart';
import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';

class TittlePresenter{
  void onButtonClicked(){}
  set titleView(TitleView value){}

}

class BasicTitlePResenter implements TittlePresenter{

  Spanish _spanol = Spanish();
  TitleViewModel _titleViewModel = TitleViewModel("yap");
  TitleView _titleView = TitleView();

  @override
  void onButtonClicked() {
    //implemetacion del boton
    print("Evento del boton");

    this._titleViewModel.title= _spanol.espanolg;
    this._titleView.refreshTitle(this._titleViewModel);

    //recuperar el titulo de un boton y pasarlo a la vista
    //String val= this._spanol.inlesg;
  }

  @override
  void set titleView(TitleView value) {
    this._titleView.refreshTitle(this._titleViewModel);
  }

}