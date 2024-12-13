import 'package:get/get.dart';

class MyController extends GetxController {
  final _titulo = "Consumo de APIS - 01".obs;
  final _pagina = 0.obs;                   // Variable reactiva
  final _listaUsuariosReqRes = [].obs;


  void setTitulo(String item) {       // Recibo el elemento y cambio el valor del atributo. 
    _titulo.value = item;
  }

  void setPagina(int item) {        // Metodo para cambiar la pagina
    _pagina.value = item;
  }

  void setListaUsuariosReqRes(List item) {
    _listaUsuariosReqRes.value = item;
  }

  String get Titulo => _titulo.value;
  int get Pagina => _pagina.value;
  List get ListaUsuariosReqRes => _listaUsuariosReqRes.value;


}