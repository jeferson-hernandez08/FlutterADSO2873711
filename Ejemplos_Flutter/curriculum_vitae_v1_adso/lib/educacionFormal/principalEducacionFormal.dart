import 'package:curriculum_vitae_v1_adso/main.dart';    // Import Package de miControlador.
import 'package:flutter/material.dart';
import 'package:get/get.dart';   // Import Package de Obx.

import '../utils/utils.dart';  // Import Package de Utils.

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
          //**showModalAddEditExperiencia(context, "new", null, null);    // El contexto es toda la organizacion del arbol de widget de manera gerarquica
                                                         // Donde podemos visualizar cada uno de los elementos que tenemos. 
      }),
      body: ListView.builder(      // Este elemento es un ciclo que nos permite listar todos los elementos a ttarves de tarjeta. 
        itemCount: miControlador.ListaExperienciaLaboral.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),         // Lista donde tenemos los diferentes elementos.
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"]),  // Accedemos a la lista experiencia laboral en la posicion index
              leading: Text(miControlador.ListaExperienciaLaboral[index]["fechaInicio"]),
              trailing: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                          //**viewEsperienciaLaboral(context, miControlador.ListaExperienciaLaboral[index]);  // Le mandamos el context y recordemos que el context representa el arbol de widget de toda la aplicacion 
                        } , 
                        icon: Icon(Icons.search)),
                      IconButton(onPressed: (){
                        // Lógica para editar una experiencia laboral
                        //**showModalAddEditExperiencia(context, "edit", miControlador.ListaExperienciaLaboral[index], index);
                      } , icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: (){
                          // Lógica para eliminar un elemento de una experecia laboral.
                          Get.defaultDialog(
                            title: "Atención",
                            middleText: "Esta seguro en eliminar el registro con la experiencia como ${miControlador.ListaExperienciaLaboral[index]["titulo"]}",
                            onCancel: (){
                              // Si da click en cancelar no nos hace nada
                            },
                            onConfirm: (){
                              miControlador.removeItemListaExpericienciaLaboral(index);    // Hacemos que en el momento que presionemos removeritem le mandamos cmo parametro la lista en la posicion index.
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