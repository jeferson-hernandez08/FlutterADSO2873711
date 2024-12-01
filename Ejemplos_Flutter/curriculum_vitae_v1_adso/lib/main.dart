import 'package:curriculum_vitae_v1_adso/controllers/myController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'data/educacionFormalData.dart';
import 'data/experienciaData.dart';
import 'interfaz/principal.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);   // Esta funcion es para traernos todos los elementos de la lista
  miControlador.cambiarListaEducacionFormal(listaformacionAcademica);             // Llamamos al metodo cambiarListaEducacionFormal y le enviamos la lista de datos listaformacionAcademica lo cual Nos traemos y enviamos todos los elementos de la lista listaformacionAcademica de educacionFormalData.dart 
  runApp(Principal());                                                           // De esta manera nos traemos una Api
}

Mycontroller miControlador = Get.find();  // Crea una instancia de la clase Mycontroller.