import 'package:get/get.dart';

// Programación Reactiva.

class Mycontroller extends GetxController {
  final _titulo = "Curriculum Vitae V2 - ADSO".obs;   // Definimos una variable tipo String con un observable 
  // para verificar cambios dentro de la aplicación y poder impactar o actualizar algún  widget o componente 
  // en nuestra app. 

  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  String get Titulo => _titulo.value;                                                                                                                                                                                                                                 
  
}