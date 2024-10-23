import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Informacion Personal')
            ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYPRLSISP2uoEdGxNPVFrz02gI2KWiJ_VwNA&s'),
                ),
                Image(
                  image: NetworkImage('../images/inteligencia_artificial_01.jpg'),
                  height: 400,
                ),
                ListTile(
                  title: Text('Jeferson Mauricio'),
                  subtitle: Text('Nombre'),
                  leading:   Icon(Icons.account_circle_rounded),
                ),
                Divider(),
                ListTile(
                  title: Text('Hernandez Ladino'),
                  subtitle: Text('Apellidos'),
                  leading:   Icon(Icons.account_circle_outlined),
                ),
                Divider(),
                ListTile(
                  title: Text('3113975576'),
                  subtitle: Text('Telefono'),
                  leading:   Icon(Icons.ad_units),
                ),
                Divider(),
                ListTile(
                  title: Text('jefer.hernandez1@gmail.com'),
                  subtitle: Text('Correo electronico'),
                  leading:   Icon(Icons.alternate_email_rounded),
                ),
                Divider(),
                ListTile(
                  title: Text('Km 10 vía al magdalena'),
                  subtitle: Text('Dirección'),
                  leading:   Icon(Icons.add_location_alt),
                ),
                Divider(),
                ListTile(
                  title: Text('SENA - CPIC'),
                  subtitle: Text('Empresa'),
                  leading:   Icon(Icons.location_city_outlined),
                ),
                Divider(),
                ListTile(
                  title: Text('17001'),
                  subtitle: Text('Código postal'),
                  leading:   Icon(Icons.add_business_sharp),
                ),
                Divider(),

              
              ],),
            ),

          ],
        ),


      ),
    );
     
  }
}