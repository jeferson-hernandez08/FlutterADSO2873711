import 'package:flutter/material.dart';
import '../utils/utils.dart';

viewPublicaciones(BuildContext context, Map elementoActual) {   // Recibe dos parametros: BuildContext context y elementoActual que es el map experiencia data. 
  showModalBottomSheet(context: context,                             // Es buena practica asignar el tipo de dato que vamos a recibir. 
  isScrollControlled: true,              // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento.
  builder: (context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar Publicaciones"),
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
            leading: Icon(Icons.group_work),
            title: Text(elementoActual["tituloPublicacion"]),
            subtitle: Text("Título Publicación"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.work_history),
            title: Text(elementoActual["anioRealizacion"]),    
            subtitle: Text("Año Realización"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.people),
            title: Text(elementoActual["autores"]),    
            subtitle: Text("Autores"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.description),
            title: Text(elementoActual["descripcion"]) ,
            subtitle: Text("Descripción"),
          ),
          ListTile(
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.language),
            title: Text(elementoActual["enlacePublicacion"]),
            subtitle: Text("Enlace de Publicación"),
          ),
        ],
      ),
    );

  });
}





    
