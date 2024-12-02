import 'package:get/get.dart';

// Programación Reactiva.

class Mycontroller extends GetxController {
  final _titulo = "Curriculum Vitae V2 - ADSO".obs;              // Definimos una variable tipo String con un observable 
                                                                // para verificar cambios dentro de la aplicación y poder impactar o actualizar algún  widget o componente en nuestra app.
  final _listaExperienciaLaboral  = [].obs;                       
  final _listaEducacionFormal     = [].obs;
  final _listaFormacionContinuada = [].obs;
                                                                 
  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  // Experiencia Laboral
  void addItemListaExperienciaLaboral(Map<String,dynamic> item) {     // Los items son un mapa completo dentro de nuestra lista.
     _listaExperienciaLaboral.add(item);                              // En esta funcion le estamos enviando un map y ese mapa lo vamos a agregar a la lista recortando que tenemos una lista de mapas.
  }

  void cambiarListaExperienciaLaboral(List item) {
    _listaExperienciaLaboral.value  = item;
  }

  void removeItemListaExpericienciaLaboral(int index) {      // Recibe un entero index
    _listaExperienciaLaboral.removeAt(index);                 // Esta list tiene un metodo llamdo remove para que remove nos remueve un elemento. 
  }                                                        // Borramos el elemento de esa posicion, recordemos que una lista reactiva en el momento que los removamos tambien se remueve de la aprte grafica. 

  void editItemListaExperienciaLaboral(int index, Map itemEdit) {
     _listaExperienciaLaboral[index] = itemEdit;                    // La lista lista en esa posicion (index) que me estan enviando le asignamos ese nuevo elemento (itemEdit)
  }


  // Metodos Educación Formal 
  void addItemListaEducacionFormal(Map<String,dynamic> item) {      // Los items son un mapa completo dentro de nuestra lista.
    _listaEducacionFormal.add(item);                                // En esta funcion le estamos enviando un map y ese mapa lo vamos a agregar a la lista recortando que tenemos una lista de mapas.
  }                                                                // Este metodo es ára agregar los nuevos valores a la lista ListaEducacionFormal

  void cambiarListaEducacionFormal(List item) {     // Con este metodo cambiaListaEducacionFormal tomamos la lista listaformacionAcademica como parametro o argumento
    _listaEducacionFormal.value = item;            // List item es la lista de datos que recibe y contiene la lista listaformacionAcademica
  }                                               // Luego se le asigna el valor de item (que es la lista de listaformacionAcademica ) a _listaExperienciaLaboral.value

  void removeItemListaEducacionFormal(int index) {      // Recibe un entero index
    _listaEducacionFormal.removeAt(index);                 // Esta list tiene un metodo llamdo remove para que remove nos remueve un elemento. 
  }                                                        // Borramos el elemento de esa posicion, recordemos que una lista reactiva en el momento que los removamos tambien se remueve de la aprte grafica.

  void editItemListaEducacionFormal(int index, Map itemEdit) {
     _listaEducacionFormal[index] = itemEdit;                   // La lista lista en esa posicion (index) que me estan enviando le asignamos ese nuevo elemento (itemEdit)
  }

  // Metodos Formacion Continuada 
  void addItemListaFormacionContinuada(Map<String,dynamic> item) {         // Los items son un mapa completo dentro de nuestra lista.
    _listaFormacionContinuada.add(item);                                  // En esta funcion le estamos enviando un map y ese mapa lo vamos a agregar a la lista recortando que tenemos una lista de mapas.
  }                                                                      // Este metodo es ára agregar los nuevos valores a la lista ListaEducacionFormal

  void cambiarListaFormacionContinuada(List item) {                     // Con este metodo cambiaListaEducacionFormal tomamos la lista listaformacionAcademica como parametro o argumento
    _listaFormacionContinuada.value = item;                            // List item es la lista de datos que recibe y contiene la lista listaformacionAcademica
  }                                                                   // Luego se le asigna el valor de item (que es la lista de listaformacionAcademica ) a _listaExperienciaLaboral.value

  void removeItemListaFormacionContinuada(int index) {               // Recibe un entero index
    _listaFormacionContinuada.removeAt(index);                      // Esta list tiene un metodo llamdo remove para que remove nos remueve un elemento. 
  }                                                                // Borramos el elemento de esa posicion, recordemos que una lista reactiva en el momento que los removamos tambien se remueve de la aprte grafica.
  
  void editItemListaFormacionContinuada(int index, Map itemEdit) {
     _listaFormacionContinuada[index] = itemEdit;                   // La lista lista en esa posicion (index) que me estan enviando le asignamos ese nuevo elemento (itemEdit)
  }


  String get Titulo => _titulo.value; 
  List get ListaExperienciaLaboral => _listaExperienciaLaboral.value;        // Aqui se iguala o transforma _listaEducacionFormal a ListaEducacionFormal    
  List get ListaEducacionFormal => _listaEducacionFormal.value; 
  List get ListaFormacionContinuada => _listaFormacionContinuada.value;                                                                                                                                                                                                          
  
}