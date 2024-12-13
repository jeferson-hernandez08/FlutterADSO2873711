import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'menu.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(                 // Necesitamos usar el metodo Obx que va estar observando todos los cambios.
      appBar: AppBar(
        title: Center(child: Text(miControlador.Titulo)),     // Variable reactiva, por eso usamos el Obx.
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: opcionPaginas[miControlador.Pagina],    // Nuestro lanzador de paginas array // De forma inicial el va correr el inicio // Llamamos del arreglo opcion paginas en la pocision 0. Donde esta el lanzamiento del widget de inicio, Podemos guardar los menus en listas. 
      drawer: Menu(),
    ));
  }
}