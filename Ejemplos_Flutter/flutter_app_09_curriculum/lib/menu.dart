import 'package:flutter/material.dart';
import 'data/formacionFormalData.dart';         // Importamos el archivo donde tenemos la lista formacionAcademicaLista
import 'data/certificacionesCursosData.dart';   // Importamos el archivo donde tenemos la lista estudiosYCursosLista
import 'data/experienciaLaboralData.dart';      // Importamos el archivo donde tenemos la lista experienciaLaboralLista

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Curriculum Vitae Jeferson')),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            const Padding(  
              padding: EdgeInsets.all(20.0),
              child: Column(children: [
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage('assets/images/Foto_perfil.jpg'),
                  ),
                ),
              ],)   
            ),

            const Divider(
              color: Colors.blue,
            ),

            Card(
              color: const Color.fromARGB(255, 171, 186, 253),
              shadowColor:const Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: const EdgeInsets.all(7),

              child: ListTile(
                title: const Text('Información Personal'),
                leading: const Icon(Icons.account_circle),
                trailing: const Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  
                  
                },
              ),
            ),   

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Formación Académica'),
                leading: Icon(Icons.school),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, 
                    builder: (context) {
                      // return Text("Hola estamos dentro de un showModalBottomSheet");
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Formación académica"),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),

                        body: ListView.separated(
                          itemCount: formacionAcademicaLista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(formacionAcademicaLista[index]["titulo"]),
                              subtitle: Text(
                                formacionAcademicaLista[index]["tipoEstudio"],
                                style: TextStyle(color: formacionAcademicaLista[index]["color"]),
                                ),
                              leading: Text(formacionAcademicaLista[index]["anioFinalizacion"].toString()),
                            );
                          },
                        ),
                      );
                    });
                },
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Certificaciones y Cursos'),
                leading: Icon(Icons.book),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, 
                    builder: (context) {
                      // return Text("Hola estamos dentro de un showModalBottomSheet");
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Certificaciones y Cursos"),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),

                        body: ListView.separated(
                          itemCount: estudiosYCursosLista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(estudiosYCursosLista[index]["titulo"]),
                              subtitle: Text(
                                estudiosYCursosLista[index]["categoria"],
                                style: TextStyle(color: estudiosYCursosLista[index]["colorCategoria"]),
                                ),
                              leading: Text(estudiosYCursosLista[index]["anioRealizacion"].toString()),
                            );
                          },
                        ),
                      );
                    });
                },
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Experiencia Laboral'),
                leading: Icon(Icons.business_sharp),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, 
                    builder: (context) {
                      // return Text("Hola estamos dentro de un showModalBottomSheet");
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Experiencia Laboral"),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),

                        body: ListView.separated(
                          itemCount: experienciaLaboralLista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(experienciaLaboralLista[index]["titulo"]),
                              subtitle: Text(
                                experienciaLaboralLista[index]["categoria"],
                                style: TextStyle(color: experienciaLaboralLista[index]["colorCategoria"]),
                              ),
                              leading: Padding(   
                                padding: const EdgeInsets.all(8.0),
                                child: Column(   // Solucion para poner dos elementos.
                                  children: [
                                    Text(
                                      experienciaLaboralLista[index]["fechaInicio"].toString(),
                                      //experienciaLaboralLista[index]["fechaInicio"]["fechaFin"].toString(),
                                      // Consultar con el profe como poner otro elemento
                                    ),
                                    Text(
                                      experienciaLaboralLista[index]["fechaFin"].toString(),
                                      //experienciaLaboralLista[index]["fechaInicio"]["fechaFin"].toString(),
                                      // Consultar con el profe como poner otro elemento
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(experienciaLaboralLista[index]["iconoCategoria"]),
                            );
                          },
                        ),
                      );
                    });  
                },
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Habilidades'),
                leading: Icon(Icons.build),
                trailing: Icon(Icons.arrow_circle_right_outlined),
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Proyectos Destacados'),
                leading: Icon(Icons.star),
                trailing: Icon(Icons.arrow_circle_right_outlined),
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Idiomas'),
                leading: Icon(Icons.language_outlined),
                trailing: Icon(Icons.arrow_circle_right_outlined),
              ),
            ), 

            Card(
              color: Color.fromARGB(255, 171, 186, 253),
              shadowColor:Color.fromARGB(255, 255, 0, 212),
              elevation: 5,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.all(7),

              child: ListTile(
                title: Text('Referencias Personales'),
                leading: Icon(Icons.group),
                trailing: Icon(Icons.arrow_circle_right_outlined),
              ),
            ), 
                
              
          ],
        ),
      );
  }
}