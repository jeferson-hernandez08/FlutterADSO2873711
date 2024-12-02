import 'package:curriculum_vitae_v1_adso/formacionContinuada/addEditFormacionContinuada.dart';
import 'package:curriculum_vitae_v1_adso/formacionContinuada/viewFormacionContinuada.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

class PrincipalFormacionContinuada extends StatefulWidget {
  const PrincipalFormacionContinuada({super.key});

  @override
  State<PrincipalFormacionContinuada> createState() => _PrincipalFormacionContinuadaState();
}

class _PrincipalFormacionContinuadaState extends State<PrincipalFormacionContinuada> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(     // Metodo observable es para estar pendiente frente a cualquier cambio de la lista ListaExperienciaLaboral y actualize. 
      appBar: AppBar(
        title: Text("Formacion Continuada"),                                      
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: Icon(Icons.add),
        onPressed: (){
          // Lógica para agregar una Educacion Formal
          showModalAddEditFormacionContinuada(context, "new", null, null);    // El contexto es toda la organizacion del arbol de widget de manera gerarquica
                                                                 // Donde podemos visualizar cada uno de los elementos que tenemos. 
      }),
      body: ListView.builder(      // Este elemento es un ciclo que nos permite listar todos los elementos a ttarves de tarjeta. 
        itemCount: miControlador.ListaExperienciaLaboral.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaFormacionContinuada[index]["titulo"]),            // Lista donde tenemos los diferentes elementos.
              subtitle: Text(miControlador.ListaFormacionContinuada[index]["categoria"]),   // Accedemos a la lista educacion formal en la posicion index
              leading: Text(miControlador.ListaFormacionContinuada[index]["anioRealizacion"]),  // ****AQUI QUEDE YA ESTOY CONSUMIENDO LOS DATOS EN EL MENU****
              trailing: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.  // QUEDE AQUII... VIEW OKKK //
                         viewFormacionContinuada(context, miControlador.ListaFormacionContinuada[index]);  // Le mandamos el context y recordemos que el context representa el arbol de widget de toda la aplicacion y le mandamos la ListaEducacionFormal
                        } , 
                        icon: Icon(Icons.search)),
                      IconButton(onPressed: (){
                        // Lógica para editar una experiencia laboral
                        //**showModalAddEditEducacionFormal(context, "edit", miControlador.ListaFormacionContinuada[index], index);
                      } , icon: Icon(Icons.edit)),
                      IconButton(
                        onPressed: (){
                          // Lógica para eliminar un elemento de una experecia laboral.
                          Get.defaultDialog(
                            title: "Atención",
                            middleText: "Esta seguro en eliminar el registro con la educación formal como ${miControlador.ListaFormacionContinuada[index]["titulo"]}",
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