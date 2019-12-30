import 'package:change_lenguaje/model.dart';
import 'package:change_lenguaje/src/Model/Spanish.dart';
import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';

//interfa para realizar la modificacion de los elementos
class TittlePresenter{
  void onButtonClicked(String lenguaje){}
  set titleView(TitleView value){}
}

//Implementa la interfaz TitlePresenter
class BasicTitlePResenter implements TittlePresenter{

  //obtenemos los Modelos
  Spanish _spanol = Spanish();
  English _ingles = English();
  French _frances = French();
  //agregamos valores iniciales
  TitleViewModel _titleViewModel = TitleViewModel("yap", "yap2", "yap3");
  TitleView _titleView = TitleView();

  @override
  void set titleView(TitleView value){
    _titleView = value;
    this._titleView.refreshTitle(this._titleViewModel);
  }

  @override
  void onButtonClicked(String Lenguaje) {

    if(Lenguaje=="español"){
      this._titleViewModel.title= _spanol.espanolg;
      this._titleViewModel.btn2=_spanol.inlesg;
      this._titleViewModel.btn3=_spanol.francesg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
    else if(Lenguaje=="ingles"){
      this._titleViewModel.title= _ingles.espanolg;
      this._titleViewModel.btn2=_ingles.inlesg;
      this._titleViewModel.btn3=_ingles.francesg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
    else if (Lenguaje=="frances"){
      this._titleViewModel.title= _frances.espanolg;
      this._titleViewModel.btn2=_frances.inlesg;
      this._titleViewModel.btn3=_frances.francesg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
  }

}