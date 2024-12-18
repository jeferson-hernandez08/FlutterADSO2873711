import 'data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/data/educacionFormalData.dart';
import 'package:curriculum_vitae_v1_adso/data/formacionContinuadaData.dart';
import 'package:curriculum_vitae_v1_adso/data/publicacionesData.dart';
import 'package:flutter/material.dart';
import 'package:curriculum_vitae_v1_adso/controllers/myController.dart';

import 'interfaz/principal.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);       // Esta funcion es para traernos todos los elementos de la lista
  miControlador.cambiarListaEducacionFormal(listaFormacionAcademica);               // Llamamos al metodo cambiarListaEducacionFormal y le enviamos la lista de datos listaformacionAcademica lo cual Nos traemos y enviamos todos los elementos de la lista listaformacionAcademica de educacionFormalData.dart 
  miControlador.cambiarListaFormacionContinuada(listaFormacionContinuada);         // Llamamos al metodo cambiarListaFormacionContinuada y le enviamos la lista de datos listaFormacionContinuada lo cual Nos traemos y enviamos todos los elementos de la lista listaformacionAcademica de educacionFormalData.dart 
  miControlador.cambiarListaPublicaciones(listaPublicaciones);                    // Llamamos al metodo cambiarListaPublicaciones y le enviamos la lista de datos listaPublicaiones lo cual Nos traemos y enviamos todos los elementos de la lista listaPubliciones de publicacionesData.dart 
  runApp(Principal());                                                           // De esta manera nos traemos una Api
}

Mycontroller miControlador = Get.find();  // Crea una instancia de la clase Mycontroller.
