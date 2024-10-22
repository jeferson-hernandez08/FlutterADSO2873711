import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));

    final ButtonStyle estilos2 =
      FilledButton.styleFrom(textStyle: const TextStyle(fontSize: 40));

    
    return MaterialApp(
      title: 'Widgets basicos flutter',
      home: Column(
        children: [
          const Text(
            overflow: TextOverflow.fade,
            maxLines: 1,
            'Lenguajes de programación del mejor de los mejores'), 
          const Icon(
            Icons.add_home_work_sharp,
            color: const Color.fromARGB(255, 154, 247, 5),
            size: 100.0,
            semanticLabel: 'Home',
          ),
          // const Text('dart'),
          // const Text('Javas Script'), 
          // const Text('php'),
          // const Text('Python'),
          // const Text('Java'),
          // const Text('C++'),
          // const Text('Ruby'),
          // const Text('TypeScript'),
          const Text('Go'),
          ElevatedButton(
            onPressed: (){}, 
            style: estilos,
            child: const Text('Enviar'),
          ),
          FilledButton(
                  onPressed: () {},
                  style: estilos,
                  child: const Text('Enabled'),
          ),
          // Imagen Internet
          const Image (
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTool2JfJ_kr-kPuC_SgJ8xoaMNqGF_Ay8MEQ&s'), 
          ),
          //Imagen Local
          const Image(
            image: NetworkImage('../images/goku.png'),
            height: 400,
          ),


        ],
      ),
    );
  }
}