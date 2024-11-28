import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ViewExperienciaLaboral extends StatefulWidget {
  const ViewExperienciaLaboral({super.key});

  @override
  State<ViewExperienciaLaboral> createState() => _ViewExperienciaLaboralState();
}

class _ViewExperienciaLaboralState extends State<ViewExperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar experiencia laboral"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text("Id: 10"),
            title: Text('Desarrollador Android'),
            subtitle: Text("2013-08-01 / 2024-11-26"),
          ),
          ListTile(
            leading: Text("Id: 10"),
            title: Text("2013-08-01 / 2024-11-26"),
            subtitle: Text("Periodo trabajado"),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Desarrollo de aplicaciones móviles nativas para Android utilizando Java y Kotlin. Integración de servicios web y optimización del rendimiento de las aplicaciones en dispositivos móviles.') ,
            subtitle: Text("Funciones"),
          ),
          ListTile(
            iconColor: Colors.amber,
            leading: Icon(Icons.work),
            title: Text('FullStack'),
            subtitle: Text("Categoria"),
          ),
        ],
      ),
    );
  }
}