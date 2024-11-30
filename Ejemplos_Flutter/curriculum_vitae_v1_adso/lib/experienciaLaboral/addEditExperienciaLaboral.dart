import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController funcionesController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  funcionesController.clear();
  categoriaController.clear();
}

showModalAddEditExperiencia(context, String opcionAddEdit, dynamic elementoActual, dynamic index) {   // Cuando le presionemos el boton adicional le estamos diciendo que nos habra un modal

limpiarCampos();
if (opcionAddEdit == "edit") {
  tituloController.text = elementoActual["titulo"];
  fechaInicioController.text = elementoActual["fechaInicio"];
  fechaFinController.text = elementoActual["fechaFin"];
  funcionesController.text = elementoActual["funciones"]; 
  categoriaController.text = elementoActual["categoria"];     
}

  showModalBottomSheet(                 // Con la funcion showModalBottomSheet y aqui abriremos un Scaffold
    isScrollControlled: false,          // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento. 
    context: context, 
    builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(opcionAddEdit=="new"?"Ingresar Experiencia":"Editar experiencia"),  // Si la opcionAddEdit es igual a "new" mostramos el texto "Ingresar experiencia" si NO ponemos el texto "Editar experiencia"
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child: opcionAddEdit=="new"?Icon(Icons.save):Icon(Icons.edit),
        onPressed: () {
          // Se ejecuta cuando se guarda un elemento de experiencia
          if (opcionAddEdit == "new") {
            Map<String,dynamic> newItem = {
              // 'id': 10,
              'titulo': tituloController.text,
              'fechaInicio': fechaInicioController.text,
              'fechaFin': fechaFinController.text,
              'funciones': funcionesController.text,
              'categoria': categoriaController.text,
              'colorCategoria': Colors.blue, // Color para la categoría 'Móvil'
            };
            miControlador.addItemListaExperienciaLaboral(newItem);  // Llamamos la funcion addItemListaExperienciaLaboral de myController
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Experiencia agregada con éxito",    // Mostrar mensaje
                backgroundColor: Colors.green[300],
                colorText: Colors.white
            );
          } else {
            // Lógica para editar un registro de experiencia
            // Basicamente creamos un nuevo mapa con clave String('titulo', etc.) y valores dynamico(tituloController.text, etc.)
            Map<String,dynamic> elementEdit =  {    // Gereramos un elemento que se va a editar que es de tipo map lo ucal lo mandamos en el  miControlador.editItemListaExperienciaLaboral
              'titulo': tituloController.text,
              'fechaInicio': fechaInicioController.text,
              'fechaFin': fechaFinController.text,
              'funciones': funcionesController.text,
              'categoria': categoriaController.text,
              'colorCategoria': Colors.blue, // Color para la categoría 'Móvil'
            };
            miControlador.editItemListaExperienciaLaboral(index, elementEdit);
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Experiencia editada con éxito",    // Mostrar mensaje
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
                hintText: "Ingrese título de la experiencia"
              ),
            ),
            TextFormField(
              controller: fechaInicioController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "fecha Inicio",
                hintText: "Ingrese fecha de inicio de la experiencia"
              ),
            ),
            TextFormField(
              controller: fechaFinController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Fecha Fin",
                hintText: "Ingrese fecha fin de la experiencia"
              ),
            ),
            TextFormField(
              controller: funcionesController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Funciones",
                hintText: "Ingrese las funciones de la experiencia"
              ),
            ),
            TextFormField(
              controller: categoriaController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Categoría",
                hintText: "Ingrese categoría de la experiencia"
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