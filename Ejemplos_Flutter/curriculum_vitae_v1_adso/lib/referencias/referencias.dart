import 'package:flutter/material.dart';
import '../data/perfilData.dart';     

class Referencias extends StatefulWidget {
  const Referencias({super.key});

  @override
  State<Referencias> createState() => _ReferenciasState();
}

class _ReferenciasState extends State<Referencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Referencias"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(  
        children: [
          // Seccion Referencias Personales
          Card(
            color: const Color.fromARGB(172, 0, 0, 0),
            shadowColor:Color.fromARGB(255, 0, 0, 0),
            elevation: 40,
            surfaceTintColor: Colors.white,
            margin: EdgeInsets.all(5),

            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Referencias Personales',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,  // Hace que el GridView tome solo el espacio necesario.
            physics: NeverScrollableScrollPhysics(),  // Desactiva el scroll interno del GridView.
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Luis Martínez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                     Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Amigo cercano',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Gerente de Proyectos',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '@luis.martinez@innovatech.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '3113325566',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Luis es un amigo cercano desde hace años. Puede hablar sobre mi ética de trabajo, responsabilidad y mi enfoque en lograr objetivos tanto personales como profesionales.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ), 
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Patricia Gómez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Amiga de confianza',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Coordinadora de Eventos',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'patricia.gomez@eventoscreativos.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 7893',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Patricia y yo compartimos varias experiencias laborales y personales. Puede hablar sobre mi habilidad para manejar situaciones de presión y mi actitud positiva en proyectos colaborativos.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ), 
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Raúl Pérez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Mentor personal',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Consultor de Desarrollo Personal',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          ' raul.perez@raulconsultoria.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 7894',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Raúl ha sido mi mentor en el desarrollo personal y profesional. Puede dar testimonio sobre mi capacidad para mejorar continuamente, mi ética de trabajo y mi responsabilidad.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ),
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Clara Sánchez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Amiga de la familia',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Abogada',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'clara.sanchez@syasociados.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 7895',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Clara ha sido amiga de mi familia durante muchos años. Puede hablar sobre mi carácter, mis valores y cómo me comporto tanto en entornos personales como profesionales.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                      
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Seccion Referencias Profesionales
          Card(
            color: const Color.fromARGB(172, 0, 0, 0),
            shadowColor:Color.fromARGB(255, 0, 0, 0),
            elevation: 40,
            surfaceTintColor: Colors.white,
            margin: EdgeInsets.all(5),

            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Referencias Profesionales',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,  // Hace que el GridView tome solo el espacio necesario.
            physics: NeverScrollableScrollPhysics(),  // Desactiva el scroll interno del GridView.
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Juan Pérez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                     Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Jefe directo',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Líder de Desarrollo de Software',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'juan.perez@xyz.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 789',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Trabajé bajo su supervisión durante 3 años en proyectos de desarrollo de software. Puede hablar sobre mi capacidad de liderazgo, resolución de problemas y eficiencia en el trabajo en equipo.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ), 
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Carlos Gómez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                     Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Compañero de trabajo',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Desarrollador Backend',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'carlos.gomez@softdev.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 7890',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Trabajamos juntos en varios proyectos de backend. Puede dar testimonio de mi habilidad para colaborar en equipos multidisciplinarios y mi enfoque hacia la calidad del código.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ), 
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'Ana Fernández',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                     Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Mentor profesional',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Arquitecta de Software',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'ana.fernandez@globaltech.com',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+123 456 7891',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Ana fue mi mentora durante un programa de desarrollo profesional. Puede hablar sobre mi progreso profesional, habilidades de comunicación y capacidad para aprender nuevas tecnologías rápidamente.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ),
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'María Rodríguez',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.person),
                      ),
                     Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Profesora universitaria',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.people),
                      ),
                      Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Profesora de Ingeniería en Sistemas',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.business_sharp),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'mrodriguez@utm.edu',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                       Divider(
                        //thickness: 1,    // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,        // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,      // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,  // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          '+34 91 234 5678',
                          style: TextStyle(fontSize: 14),
                        ),
                        leading: Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(
                          'Fue mi profesora durante mi formación académica en ingeniería de software. Puede comentar sobre mi rendimiento académico, habilidades técnicas y capacidad para trabajar en proyectos complejos.',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.description),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      // Agremas mas cosas si se desea
                    ],
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}