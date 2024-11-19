import 'package:flutter/material.dart';

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
                title: const Text('Informacion Personal'),
                leading: const Icon(Icons.account_circle),
                trailing: const Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  showModalBottomSheet(
                    context: context, 
                    builder: (context) {
                      // return Text("Hola estamos dentro de un showModalBottomSheet");
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Formacion académica"),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),

                        body: ListView(
                          children: [
                            Text("Información de la información academica")
                          ],
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
                title: Text('Formación Académica'),
                leading: Icon(Icons.school),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: (){

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