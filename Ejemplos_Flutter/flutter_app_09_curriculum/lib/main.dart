import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae V1',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Curriculum Vitae Jeferson')
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage('../images/Foto_perfil.jpg'),
                ),
                Divider(
                  color: Colors.blue,
                ),

                Card(
                  color: Color.fromARGB(255, 171, 186, 253),
                  shadowColor:Color.fromARGB(255, 255, 0, 212),
                  elevation: 5,
                  surfaceTintColor: Colors.white,
                  margin: EdgeInsets.all(7),

                  child: ListTile(
                    title: Text('Informacion Personal'),
                    leading: Icon(Icons.account_circle),
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
                    title: Text('Formación Académica'),
                    leading: Icon(Icons.school),
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
                
              ],)   
            ),
          ],
        ),
      ),
    );
  }
}