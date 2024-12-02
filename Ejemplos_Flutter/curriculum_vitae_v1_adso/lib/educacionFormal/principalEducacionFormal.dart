import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/educacionFormal/addEditEducacionFormal.dart';
import 'package:curriculum_vitae_v1_adso/educacionFormal/viewEducacionFormal.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

class PrincipalEducacionFormal extends StatefulWidget {
  const PrincipalEducacionFormal({super.key});

  @override
  State<PrincipalEducacionFormal> createState() => _PrincipalEducacionFormalState();
}

class _PrincipalEducacionFormalState extends State<PrincipalEducacionFormal> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(     // Metodo observable es para estar pendiente frente a cualquier cambio de la lista ListaExperienciaLaboral y actualize. 
      appBar: AppBar(
        title: Text("Educación Formal"),                                      
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: Icon(Icons.add),
        onPressed: (){
          // Lógica para agregar una experiencia
          showModalAddEditEducacionFormal(context, "new", null, null);    // El contexto es toda la organizacion del arbol de widget de manera gerarquica
                                                         // Donde podemos visualizar cada uno de los elementos que tenemos. 
      }),
      body: ListView.builder(      // Este elemento es un ciclo que nos permite listar todos los elementos a ttarves de tarjeta. 
        itemCount: miControlador.ListaEducacionFormal.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaEducacionFormal[index]["titulo"]),         // Lista donde tenemos los diferentes elementos.
              subtitle: Text(miControlador.ListaEducacionFormal[index]["tipoEstudio"]),  // Accedemos a la lista experiencia laboral en la posicion index
              leading: Text(miControlador.ListaEducacionFormal[index]["anioFinalizacion"]),
              trailing: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                          viewEducacionFormal(context, miControlador.ListaEducacionFormal[index]);  // Le mandamos el context y recordemos que el context representa el arbol de widget de toda la aplicacion 
                        } , 
                        icon: Icon(Icons.search)),
                      IconButton(onPressed: (){
                        // Lógica para editar una experiencia laboral
                        showModalAddEditEducacionFormal(context, "edit", miControlador.ListaEducacionFormal[index], index);
                      } , icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: (){
                          // Lógica para eliminar un elemento de una educacion formal.
                          Get.defaultDialog(
                            title: "Atención",
                            middleText: "Esta seguro en eliminar el registro con la educación formal como ${miControlador.ListaEducacionFormal[index]["titulo"]}",
                            onCancel: (){
                              // Si da click en cancelar no nos hace nada
                            },
                            onConfirm: (){
                              miControlador.removeItemListaEducacionFormal(index);    // Hacemos que en el momento que presionemos removeritem le mandamos cmo parametro la lista en la posicion index.
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