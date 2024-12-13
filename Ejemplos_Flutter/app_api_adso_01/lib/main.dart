import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/myController.dart';
import 'interfaces/inicio.dart';
import 'interfaces/principal.dart';
import 'reqresp/listaUsuarios.dart';

void main(List<String> args) {
  Get.put(MyController());
  runApp(Principal());                        // Lanzamos nuestro widget Principal
}

MyController miControlador = Get.find();    // Declaramos ina instancia de micontrollador, donde allí van a estar todas nuestras variables reactivas 

List<dynamic> opcionPaginas = [            // Generamos una lista dinamica que en cada posicion va tener un widget que va corresponder a una pagina
  Inicio(),           // 0. Inicio                   // Podemos tener una lista donde acada una de las posciones sea in widget en este caso Inicio.dart
  ListaUsuarios(),    // 1. ListaUsuarios
  
];