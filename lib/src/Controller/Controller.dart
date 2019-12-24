import '../../model.dart' show English, French, spanish;
import '../../controller.dart' show ControllerMVC;


class Controller extends ControllerMVC{

  var ing = English();
  var esp = spanish();
  var fra = French();

  List<String> titleBotons = new List<String>();

  List<String> DatosIng(){
    titleBotons.add(ing.espanolg);
    titleBotons.add(ing.francesg);
    titleBotons.add(ing.inlesg);
    return titleBotons;
  }

  List<String> DatosEsp(){
    titleBotons.add(esp.espanolg);
    titleBotons.add(esp.francesg);
    titleBotons.add(esp.inlesg);
    return titleBotons;
  }

  List<String> DatosFre(){
    titleBotons.add(fra.espanolg);
    titleBotons.add(fra.francesg);
    titleBotons.add(fra.inlesg);
    return titleBotons;
  }

}