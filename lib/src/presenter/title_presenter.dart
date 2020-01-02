import 'package:change_lenguaje/model.dart';
import 'package:change_lenguaje/src/Model/Panda.dart';
import 'package:change_lenguaje/src/Model/title_viewmodel.dart';
import 'package:change_lenguaje/src/View/TitleView.dart';

class TittlePresenter{
  void onButtonClicked(String lenguaje){}
  set titleView(TitleView value){}
}

class BasicTitlePResenter implements TittlePresenter{

  Panda _panda = Panda();
  Leon _leon = Leon();
  Delfin _delfin = Delfin();
  TitleViewModel _titleViewModel = TitleViewModel("https://img.freepik.com/vector-gratis/muchos-animales-lindos-bosque-bambu_1308-32851.jpg?size=626&ext=jpg");
  TitleView _titleView = TitleView();


  @override
  void set titleView(TitleView value) {
    _titleView = value;
    this._titleView.refreshTitle(this._titleViewModel);
  }

  @override
  void onButtonClicked(String Animal) {
    print("Evento del boton");
    if(Animal=="panda"){
      this._titleViewModel.urlImage= _panda.urlImageg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
    else if(Animal=="leon"){
      this._titleViewModel.urlImage = _leon.urlImageg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
    else if (Animal=="delfim"){
      this._titleViewModel.urlImage = _delfin.urlImageg;
      this._titleView.refreshTitle(this._titleViewModel);
    }
    else{
      this._titleViewModel.urlImage = "https://imagenes.milenio.com/kR5_-Xne5v2GiI2hDYs_vPvDCTM=/958x596/https://www.milenio.com/uploads/media/2018/10/04/de-octubre-dia-mundial-de_0_28_1280_797.jpg";
      this._titleView.refreshTitle(this._titleViewModel);
    }
  }

}