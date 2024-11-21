import 'package:flutter/material.dart';
import '../data/perfilData.dart';     

class PerfilPersonal extends StatefulWidget {
  const PerfilPersonal({super.key});

  @override
  State<PerfilPersonal> createState() => _PerfilPersonalState();
}

class _PerfilPersonalState extends State<PerfilPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información Personal"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,  // Hace que el GridView tome solo el espacio necesario.
            physics: NeverScrollableScrollPhysics(),  // Desactiva el scroll interno del GridView.
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image(
                      image: NetworkImage("assets/images/Foto_perfil.jpg"),
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
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
                          'Jeferson Mauricio Hernandez Ladino',
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
                          '3113975576',
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
                          'Calle 123 E # 41 - 51',
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Icon(Icons.location_on),
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
                          '@jefer.hernandez1',
                          style: TextStyle(fontSize: 11),
                        ),
                        leading: Icon(Icons.mail),
                      ),
                    ],
                  ),
                ), 
              ),  
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Text(
                        'Dark',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.8, // 80% de progreso
                        minHeight: 5, // Altura de la barra
                        color: Colors.green, // Color de la barra
                        backgroundColor: Colors.grey[300], // Color de fondo de la barra
                      ),
                      SizedBox(height: 10), // Espacio de 10 píxeles entre los elementos. El widget SizedBox permite especificar un tamaño fijo para el espacio entre los elementos.

                      Text(
                        'Flutter',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.7, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'JavaScript',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'PHP',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'Python',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.75, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'React',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'SQL',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Text(
                        'Reading',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.8, // 80% de progreso
                        minHeight: 5, // Altura de la barra
                        color: Colors.blue, // Color de la barra
                        backgroundColor: Colors.grey[300], // Color de fondo de la barra
                      ),
                      SizedBox(height: 10), // Espacio de 10 píxeles entre los elementos. El widget SizedBox permite especificar un tamaño fijo para el espacio entre los elementos.

                      Text(
                        'Speaking',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.7, 
                        minHeight: 5, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'Listening',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'Writing',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 5, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Card(
            color: Colors.white,
            shadowColor:Color.fromARGB(255, 0, 0, 0),
            elevation: 20,
            surfaceTintColor: Colors.white,
            margin: EdgeInsets.all(7),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  perfilDataList["perfil"],
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}