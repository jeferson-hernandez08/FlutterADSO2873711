import 'package:app_api_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaUsuarios extends StatefulWidget {
  const ListaUsuarios({super.key});

  @override
  State<ListaUsuarios> createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> ListView.builder(
      itemCount: miControlador.ListaUsuariosReqRes.length,   //Lista reactiva que se encuentra en el controlador  // Ciclo que va estar ejecutando la cantidad de veces que tenga de longitud la lista
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 15,
          child: ListTile(
            title: Text(miControlador.ListaUsuariosReqRes[index]["first_name"]+" "+miControlador.ListaUsuariosReqRes[index]["last_name"]),      // first_name proviene del dato de la API
            subtitle: Text(miControlador.ListaUsuariosReqRes[index]["email"]),              // Nos tremos cada dato de la API.
            leading: Image(image: NetworkImage(miControlador.ListaUsuariosReqRes[index]["avatar"])),
            trailing: Text("Id:"+miControlador.ListaUsuariosReqRes[index]["id"].toString()),
          ),
        );
      },
    ));
  }
}