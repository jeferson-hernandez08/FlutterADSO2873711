import 'package:flutter/material.dart';
import 'package:flutter_app_09_curriculum/menu.dart';




void main(List<String> args) {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,     //Para quitar etiqueta de debug
      title: 'Curriculum Vitae V1',
      home: Menu()     //Importamos el menu.dart para llamar a todo el Scaffol.
    );
  }
}