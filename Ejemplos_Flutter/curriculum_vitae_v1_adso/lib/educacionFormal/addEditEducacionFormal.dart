import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

// Declaracion de variables
final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController anioFinalizacionController = TextEditingController();
final TextEditingController tipoEstudioController = TextEditingController();
final TextEditingController institucionController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  anioFinalizacionController.clear();
  tipoEstudioController.clear();
  institucionController.clear();
}

showModalAddEditEducacionFormal(context, String opcionAddEdit, dynamic elementoActual, dynamic index) {   // Cuando le presionemos el boton adicional le estamos diciendo que nos habra un modal

limpiarCampos();
if (opcionAddEdit == "edit") {
  tituloController.text = elementoActual["titulo"];
  anioFinalizacionController.text = elementoActual["anioFinalizacion"];
  tipoEstudioController.text = elementoActual["tipoEstudio"];
  institucionController.text = elementoActual["institucion"];      
}

  showModalBottomSheet(                 // Con la funcion showModalBottomSheet y aqui abriremos un Scaffold
    isScrollControlled: false,          // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento. 
    context: context, 
    builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(opcionAddEdit=="new"?"Ingresar Educación Formal":"Editar Educación Formal"),  // Si la opcionAddEdit es igual a "new" mostramos el texto "Ingresar experiencia" si NO ponemos el texto "Editar experiencia"
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: opcionAddEdit=="new"?Icon(Icons.save):Icon(Icons.edit),
        onPressed: () {
          // Se ejecuta cuando se guarda un elemento de la educacion formal
          if (opcionAddEdit == "new") {
            Map<String,dynamic> newItem = {
              // 'id': 10,
              'titulo': tituloController.text,
              'anioFinalizacion' : anioFinalizacionController.text,
              'tipoEstudio': tipoEstudioController.text,
              'institucion': institucionController.text,
              'color': Colors.blue,  // Azul para Tipo de Estudio
            };
            miControlador.addItemListaEducacionFormal(newItem);  // Llamamos la funcion addItemListaExperienciaLaboral de myController
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Educación Formal agregada con éxito",    // Mostrar mensaje
                backgroundColor: Colors.green[300],
                colorText: Colors.white
            );
          } else {
            // Lógica para editar un registro de educacion formal
            // Basicamente creamos un nuevo mapa con clave String('titulo', etc.) y valores dynamico(tituloController.text, etc.)
            Map<String,dynamic> elementEdit =  {    // Gereramos un elemento que se va a editar que es de tipo map lo ucal lo mandamos en el  miControlador.editItemListaEducacionFormal
              'titulo': tituloController.text,
              'anioFinalizacion' : anioFinalizacionController.text,
              'tipoEstudio': tipoEstudioController.text,
              'institucion': institucionController.text,
              'color': Colors.blue,  // Azul para Tipo de Estudio
            };
            miControlador.editItemListaEducacionFormal(index, elementEdit);
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Educación Formal editada con éxito",    // Mostrar mensaje
                backgroundColor: Colors.green[300],
                colorText: Colors.white
            );     
          }
      }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children:[
            TextFormField(
              controller: tituloController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Título",
                hintText: "Ingrese título de la educacion formal"
              ),
            ),
            TextFormField(
              controller: anioFinalizacionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Año Finalización",
                hintText: "Ingrese año finalización de la educación formal"
              ),
            ),
            TextFormField(
              controller: tipoEstudioController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Tipo Estudio",
                hintText: "Ingrese tipo de estudio de la educación formal"
              ),
            ),
            TextFormField(
              controller: institucionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Intitución",
                hintText: "Ingrese la institución cursada de la educación formal"
              ),
            ),
            // ElevatedButton(onPressed: () {

            // }, child: Icon(Icons.save))
          ],
        ),
      ),
    );
  });
}