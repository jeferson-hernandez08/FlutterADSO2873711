import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloPublicacionController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();
final TextEditingController anioRealizacionController = TextEditingController();
final TextEditingController autoresController = TextEditingController();
final TextEditingController descripcionController = TextEditingController();
final TextEditingController enlacePublicacionController = TextEditingController();

void limpiarCampos() {
  tituloPublicacionController.clear();
  categoriaController.clear();
  anioRealizacionController.clear();
  autoresController.clear();
  descripcionController.clear();
  enlacePublicacionController.clear();
}

showModalAddEditPublicaciones(context, String opcionAddEdit, dynamic elementoActual, dynamic index) {   // Cuando le presionemos el boton adicional le estamos diciendo que nos habra un modal

limpiarCampos();
if (opcionAddEdit == "edit") {
  tituloPublicacionController.text = elementoActual["tituloPublicacion"];
  categoriaController.text = elementoActual["categoria"];
  anioRealizacionController.text = elementoActual["anioRealizacion"];
  autoresController.text = elementoActual["autores"]; 
  descripcionController.text = elementoActual["descripcion"]; 
  enlacePublicacionController.text = elementoActual["enlacePublicacion"];    
}

  showModalBottomSheet(                 // Con la funcion showModalBottomSheet y aqui abriremos un Scaffold
    isScrollControlled: false,          // Esta propiedad nos permite visualizar de forma pequeña o grande (true o false)l elemento. 
    context: context, 
    builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(opcionAddEdit=="new"?"Ingresar Publicación":"Editar Publicación"),  // Si la opcionAddEdit es igual a "new" mostramos el texto "Ingresar experiencia" si NO ponemos el texto "Editar experiencia"
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
              'tituloPublicacion': tituloPublicacionController.text,
              'categoria': categoriaController.text,
              'anioRealizacion' : anioRealizacionController.text,
              'colorCategoria': Colors.blue, // Color relacionado con Frontend
              'autores' : autoresController.text,
              'descripcion': descripcionController.text,
              'enlacePublicacion' : enlacePublicacionController.text,
            };
            miControlador.addItemListaPublicaciones(newItem);  // Llamamos la funcion addItemListaPublicaciones de myController
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Publicación agregada con éxito",    // Mostrar mensaje
                backgroundColor: Colors.green[300],
                colorText: Colors.white
            );
          } else {
            // Lógica para editar un registro de experiencia
            // Basicamente creamos un nuevo mapa con clave String('titulo', etc.) y valores dynamico(tituloController.text, etc.)
            Map<String,dynamic> elementEdit =  {    // Gereramos un elemento que se va a editar que es de tipo map lo ucal lo mandamos en el  miControlador.editItemListaExperienciaLaboral
              'tituloPublicacion': tituloPublicacionController.text,
              'categoria': categoriaController.text,
              'anioRealizacion' : anioRealizacionController.text,
              'colorCategoria': Colors.blue, // Color relacionado con Frontend
              'autores' : autoresController.text,
              'descripcion': descripcionController.text,
              'enlacePublicacion' : enlacePublicacionController.text,
            };
            miControlador.editItemListaPublicaciones(index, elementEdit);
            Get.back();           // Cerrar
            limpiarCampos();     // Llamamos al metodo limpiarCampos para limpiar los campos.
            Get.snackbar("Atencion", "Publicación editada con éxito",    // Mostrar mensaje
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
              controller: tituloPublicacionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Título Publicación",
                hintText: "Ingrese título de la Publicación"
              ),
            ),
            TextFormField(
              controller: categoriaController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Categoría Publicación",
                hintText: "Ingrese Categoría Publicación"
              ),
            ),
            TextFormField(
              controller: anioRealizacionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Año Realización",
                hintText: "Ingrese año de realización de publicación"
              ),
            ),
            TextFormField(
              controller: autoresController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Autores de Publicación",
                hintText: "Ingrese los autores de la publicación"
              ),
            ),
            TextFormField(
              controller: descripcionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Descripción",
                hintText: "Ingrese descripción de la publicación"
              ),
            ),
            TextFormField(
              controller: enlacePublicacionController,   // Asignamos el controlador.
              decoration: InputDecoration(
                labelText: "Enlace Publicación",
                hintText: "Ingrese enlace del proyecto o publicación"
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