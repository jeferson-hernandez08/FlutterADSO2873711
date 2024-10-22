import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}



class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informacion Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Información Personal'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            ListTile(
              title: Text('Jeferson Hernandez Ladino'),
              subtitle: Text('Jeferson Hernandez Ladino'),
              leading: Icon(Icons.person),
            ),
          ],
        ), 
      ),
    );
  }
}