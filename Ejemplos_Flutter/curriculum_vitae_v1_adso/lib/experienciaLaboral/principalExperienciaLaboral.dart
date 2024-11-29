import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/experienciaLaboral/viewExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';
import 'addEditExperienciaLaboral.dart';

class PrincipalExperienciaLaboral extends StatefulWidget {
  const PrincipalExperienciaLaboral({super.key});

  @override
  State<PrincipalExperienciaLaboral> createState() => _PrincipalExperienciaLaboralState();
}

class _PrincipalExperienciaLaboralState extends State<PrincipalExperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(     // Metodo observable es para estar pendiente frente a cualquier cambio de la lista ListaExperienciaLaboral y actualize. 
      appBar: AppBar(
        title: Text("Experiencia Laboral"),                                      
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: Icon(Icons.add),
        onPressed: (){
          showModalAddEditExperiencia(context);  // El contexto es toda la organizacion del arbol de widget de manera gerarquica
                                                // Donde podemos visualizar cada uno de los elementos que tenemos. 
      }),
      body: ListView.builder(      // Este elemento es un ciclo que nos permite listar todos los elementos a ttarves de tarjeta. 
        itemCount: miControlador.ListaExperienciaLaboral.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),    // Lista donde tenemos los diferentes elementos.
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"]),
              leading: Text(miControlador.ListaExperienciaLaboral[index]["fechaInicio"]),
              trailing: 
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                          viewEsperienciaLaboral(context, miControlador.ListaExperienciaLaboral[index]);  // Le mandamos el context y recordemos que el context representa el arbol de widget de toda la aplicacion 
                        } , 
                        icon: Icon(Icons.search)),
                      IconButton(onPressed: (){} , icon: Icon(Icons.edit)),
                      IconButton(onPressed: (){
                        // Lógica para eliminar
                      } , icon: Icon(Icons.delete)),
                    ],
                  ),
            ),
          );
        },
      ),
    ));
  }
}