import 'package:curriculum_vitae_v1_adso/experienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

viewFormacionContinuada(BuildContext context, Map elementoActual) {   // Recibe dos parametros: BuildContext context y elementoActual que es el map experiencia data. 
  showModalBottomSheet(context: context,                             // Es buena practica asignar el tipo de dato que vamos a recibir. 
  isScrollControlled: true,              // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento.
  builder: (context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Formación Continuada"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView(
        children: [
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.category),
            title: Text(elementoActual["categoria"]),
            subtitle: Text("Categoría"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.code),
            title: Text(elementoActual["titulo"]),
            subtitle: Text("Título Curso"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.work_history),
            title: Text(elementoActual["anioRealizacion"]),    
            subtitle: Text("Año Realización"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.description),
            title: Text(elementoActual["descripcion"]) ,
            subtitle: Text("Descripción"),
          ),
        ],
      ),
    );

  });
}





    
