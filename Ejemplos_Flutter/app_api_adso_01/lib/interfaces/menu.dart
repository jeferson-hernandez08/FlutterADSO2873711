import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/reqresApi.dart';
import '../main.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Get.back();      // Para cerrar la ventana
              miControlador.setTitulo("Consumo de APIS - 01");    // Seteanos el titulo
              miControlador.setPagina(0);          // Cuando demos click llamamos al inicio , del arreglo Inicio().
            },
          ),
          ListTile(
            title: Text("Lista de Usuarios"),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () async {   // Nuestro onTap debe ser funcion asyncrona para que funcione el await
              Get.back();      // Para cerrar la ventana
              miControlador.setTitulo("Lista Usuarios - Reqres.in");  // Cambiamos los titulos
              final response = await obtenerUsuarios();  // Obtenemos los usuarios que hace parte de nuestra api
              // Se asigna la lista que llega del API a la lista reactiva de nuestra aplicacion (Controller)
              miControlador.setListaUsuariosReqRes(response["data"]);     // Accedemos al data
              // print(response["data"]);
              miControlador.setPagina(1);    // seteamos la pagina 1 (listaUsuarios)   // Cuando demos click llamamos  a la pagina 1 , del arreglo ListaUsuarios().
            },
          )
        ],
      ),
    );
  }
}               