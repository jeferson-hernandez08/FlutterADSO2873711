import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/publicaciones/viewPublicaciones.dart';
import 'addEditPublicaciones.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

class PrincipalPublicaciones extends StatefulWidget {
  const PrincipalPublicaciones({super.key});

  @override
  State<PrincipalPublicaciones> createState() => _PrincipalPublicacionesState();
}

class _PrincipalPublicacionesState extends State<PrincipalPublicaciones> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(     // Metodo observable es para estar pendiente frente a cualquier cambio de la lista ListaExperienciaLaboral y actualize. 
      appBar: AppBar(
        title: Text("Publicaciones Técnicas y Profesionales"),                                      
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: Icon(Icons.add),
        onPressed: (){
          // Lógica para agregar una experiencia
          showModalAddEditPublicaciones(context, "new", null, null);    // El contexto es toda la organizacion del arbol de widget de manera gerarquica
                                                         // Donde podemos visualizar cada uno de los elementos que tenemos. 
      }),
      body: ListView.builder(      // Este elemento es un ciclo que nos permite listar todos los elementos a ttarves de tarjeta. 
        itemCount: miControlador.ListaPublicaciones.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaPublicaciones[index]["tituloPublicacion"]),         // Lista donde tenemos los diferentes elementos.
              subtitle: Text(miControlador.ListaPublicaciones[index]["categoria"]),       // Accedemos a la lista experiencia laboral en la posicion index
              leading: Text(miControlador.ListaPublicaciones[index]["anioRealizacion"]),
              trailing: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                          viewPublicaciones(context, miControlador.ListaPublicaciones[index]);  // Le mandamos el context y recordemos que el context representa el arbol de widget de toda la aplicacion 
                        } , 
                        icon: Icon(Icons.search)),
                      IconButton(onPressed: (){
                        // Lógica para editar una experiencia laboral
                        showModalAddEditPublicaciones(context, "edit", miControlador.ListaPublicaciones[index], index);
                      } , icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: (){
                          // Lógica para eliminar un elemento de una experecia laboral.
                          Get.defaultDialog(
                            title: "Atención",
                            middleText: "Esta seguro en eliminar el registro con la publicación como ${miControlador.ListaPublicaciones[index]["tituloPublicacion"]}",
                            onCancel: (){
                              // Si da click en cancelar no nos hace nada
                            },
                            onConfirm: (){
                              miControlador.removeItemListaPublicaciones(index);    // Hacemos que en el momento que presionemos removeritem le mandamos cmo parametro la lista en la posicion index.
                              Get.back();   
                            }
                          );
                        } , 
                        icon: Icon(Icons.delete)),
                    ],
                  ),
            ),
          );
        },
      ),
    ));
  }
}