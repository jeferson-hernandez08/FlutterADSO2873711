import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabajo con grids'),
          backgroundColor: const Color.fromARGB(255, 255, 227, 101),
          foregroundColor: const Color.fromARGB(255, 24, 19, 19),
        ),
        body: Container(
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: const [
              Card(
                child:  Column(
                  children: [
                    Text('Tarjeta 1'),
                    Text('ADSO'),
                    Text('2873711'),
                    Icon(Icons.assured_workload_outlined)
                  ],
                ),
              ),
              Card(
                child:  Text('Tarjeta 2'),
              ),
              Card(
                child:  Text('Tarjeta 3'),
              ),
              Card(
                child:  Text('Tarjeta 4'),
              ),
              Card(
                child:  Text('Tarjeta 5'),
              ),
              Card(
                child:  Text('Tarjeta 6'),
              ),
              Card(
                child:  Text('Tarjeta 7'),
              ),
              Card(
                child:  Text('Tarjeta 8'),
              ),
              Card(
                child:  Text('Tarjeta 9'),
              ),
              Card(
                child:  Text('Tarjeta 10'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}