import '../../model.dart' show English, French, spanish;
import '../../controller.dart' show ControllerMVC;


class Controller extends ControllerMVC{

  var ing = English();
  var esp = spanish();
  var fra = French();

  List<String> titleBotons = new List<String>();

  DatosIng(){

    //titleBotons[0]=ing.inlesg;
    titleBotons.add(ing.inlesg);
    titleBotons.add(ing.francesg);
    return titleBotons;
  }

  String DatosEsp(){
    //titleBotons[0]=esp.espanolg;
    //titleBotons[1]=esp.inlesg;
    //titleBotons[2]=esp.francesg;
    return "logro";
  }

  DatosFre(){
    titleBotons.add(fra.espanolg);
    titleBotons.add(fra.inlesg);
    titleBotons.add(fra.francesg);
    return titleBotons;
  }

}