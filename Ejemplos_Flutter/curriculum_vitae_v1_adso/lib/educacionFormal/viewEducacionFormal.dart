import 'package:flutter/material.dart';
import '../utils/utils.dart';

viewEducacionFormal(BuildContext context, Map elementoActual) {       // Recibe dos parametros: BuildContext context y elementoActual que es el map de educacionFormalData.
  showModalBottomSheet(context: context,                             // Es buena practica asignar el tipo de dato que vamos a recibir. 
    isScrollControlled: true,              // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento.
    builder: (context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Visualizar educación formal"),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
        ),
        body: ListView(
          children: [
            ListTile(
              iconColor: elementoActual["color"],
              leading: Icon(Icons.school),
              title: Text(elementoActual["tipoEstudio"]),
              subtitle: Text("Tipo Estudio"),
            ),
            ListTile(
              iconColor: elementoActual["color"],
              leading: Icon(Icons.text_fields),
              title: Text(elementoActual["titulo"]),
              subtitle: Text("Título"),
            ),
            ListTile(
              iconColor: elementoActual["color"],
              leading: Icon(Icons.work_history),
              title: Text(elementoActual["anioFinalizacion"]),    
              subtitle: Text("Fecha Finalización"),
            ),
            ListTile(
              iconColor: elementoActual["color"],
              leading: Icon(Icons.business),
              title: Text(elementoActual["institucion"]),    
              subtitle: Text("Institución"),
            ),
          ],
        ),
      );
  });
}