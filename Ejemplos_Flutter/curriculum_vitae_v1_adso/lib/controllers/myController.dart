import 'package:get/get.dart';

// Programación Reactiva.

class Mycontroller extends GetxController {
  final _titulo = "Curriculum Vitae V2 - ADSO".obs;              // Definimos una variable tipo String con un observable 
  final _listaExperienciaLaboral = [].obs;                       // para verificar cambios dentro de la aplicación y poder impactar o actualizar algún  widget o componente 
                                                                 // en nuestra app. 
  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String,dynamic> item) {     // Los items son un mapa completo dentro de nuestra lista.
     _listaExperienciaLaboral.add(item);                              // En esta funcion le estamos enviando un map y ese mapa lo vamos a agregar a la lista recortando que tenemos una lista de mapas.
  }
  void cambiarListaExperienciaLaboral(List item) {
    _listaExperienciaLaboral.value  = item;

  }

  String get Titulo => _titulo.value; 
  List get ListaExperienciaLaboral => _listaExperienciaLaboral.value;                                                                                                                                                                                                                           
  
}