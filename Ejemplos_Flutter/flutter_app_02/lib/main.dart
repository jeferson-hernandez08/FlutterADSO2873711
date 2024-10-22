
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