import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
  
}

class MyHome extends StatefulWidget {  // My home hereda de StatefulWidget
  const MyHome({super.key});   // Constructor clase MyHome

  @override  // Se sobresescribe el método del padre createState para poder crear estados del Widget
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override // Se sobreescribe el método build para retornar un Widget con toda la interfaz
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Sitios Turisticos'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turisticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text('La gran muralla china'),
                Text('Torre Eiffel'),
                Text('Coliseo Romano'),
                Text('Torre de Piza'),
                Text('Machu Pichu'),
              ],
            ),
          ],
        ),
      ),



    );
  }
  
}
