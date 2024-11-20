import 'package:flutter/material.dart';
import '../data/perfilData.dart';     

class PerfilPersonal extends StatefulWidget {
  const PerfilPersonal({super.key});

  @override
  State<PerfilPersonal> createState() => _PerfilPersonalState();
}

class _PerfilPersonalState extends State<PerfilPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información Personal"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,  // Hace que el GridView tome solo el espacio necesario.
            physics: NeverScrollableScrollPhysics(),  // Desactiva el scroll interno del GridView.
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image(
                      image: NetworkImage("assets/images/Foto_perfil.jpg"),
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,

                    ),

                  ),
                ),
              ),
              Card(
                child: Text("Información Personal")
              ),
              Card(
                child: Text("Skills"),
              ),
              Card(
                child: Text("idiomas"),
              ),
            ],
          ),
          ListTile(
            title: Text(perfilDataList["perfil"]),
          ),
        ],
      ),
    );
  }
}