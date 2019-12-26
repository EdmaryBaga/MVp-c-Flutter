import 'package:change_lenguaje/src/Model/Spanish.dart';
import 'package:change_lenguaje/src/View/LenguageMenu.dart';

class TittlePresenter{
  void onButtonClicked(){}

}

class BasicTitlePResenter implements TittlePresenter{

  @override
  void onButtonClicked() {
    //implemetacion del boton
    print("Evento del boton");
  }

}