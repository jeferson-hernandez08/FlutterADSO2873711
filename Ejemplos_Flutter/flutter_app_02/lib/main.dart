
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());  // Aquí se inicia y se lanza la aplicación
}

class Principal extends StatelessWidget {  //Se herada una clase que hereda de StatelessWidget para crear un un widget sin estado. 
  const Principal({super.key});    // Conttructor de la clase Principal

  @override   // Se sobreescribe el metodo build  de la clase para generar la interfaz de usuario.
  Widget build(BuildContext context) {
    // Se retorna un Widget en este caso MaterialApp
    return const MaterialApp(
      title: 'Mi primera app - ADSO2873711', 
      home: Text('Primera aplicación en flutter\nJeferson Mauricio Hernandez Ladino\nCPIC -SENA'),
    );
  }
}

/*
  Nota Inicialización de flutter: 
  1. Para iniciar un nuevo proyecto en flutter damos:
    - CTRL + SHIFT + P.
    - Luego Flutter: New Proyect
    - Application
    - Luego nos paramos en la carpeta donde queremos que se guarde nuestro proyecto dentro de esa carpeta.
    - Luego Select a folder to create
    - Finalmente damos el nombre de nuestro proyecto y enter.
  2. Para correr el proyecto damos F5

*/