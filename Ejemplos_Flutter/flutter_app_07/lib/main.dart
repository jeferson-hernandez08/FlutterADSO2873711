
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override // Se sobreescribe el método build para retornar un Widget con toda la interfaz
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Sitios Turisticos'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turisticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: 
          //**********ListView.builder ******/
          ListView.builder(
            itemCount: sitiosTuristicos.length,
            itemBuilder: (BuildContext context, int index) {
              // return Text('Sitio Turístico ${sitiosTuristicos[index]}');
              return Card(
                color: const Color.fromARGB(255, 171, 186, 253),
                shadowColor: const Color.fromARGB(255, 255, 0, 212),
                elevation: 5,
                surfaceTintColor: Colors.white,
                margin: const EdgeInsets.all(7),
                
                
                child: ListTile(
                  title: Text(sitiosTuristicos[index]),
                  subtitle: Text('Sitio turistico # ${index + 1}'),
                  leading: const Icon(Icons.add_location_sharp),
                  trailing: const Icon(Icons.arrow_circle_right_outlined),
                  onTap: (){
                    // print("Tap sobre el sitio turistio ${sitiosTuristicos[index]}");
                    showDialog(
                      context: context, 
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('Sitio Turistico # ${index+1}'),
                          content: Text('${sitiosTuristicos[index]}'),
                          actions: [
                            TextButton (
                              onPressed: (){
                                Navigator.of(context).pop();
                              }, 
                              child: const Text('Cerrar')
                            )
                          ],
                        );
                      }
                    );
                  },
                ),
              );
            },
          ),

          //**********ListView.separated*******/
          // ListView.separated(
          //   itemCount: sitiosTuristicos.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     // return Text('Sitio Turístico ${sitiosTuristicos[index]}');
          //     return ListTile(
          //       title: Text(sitiosTuristicos[index]),
          //       subtitle: Text('Sitio turistico # ${index + 1}'),
          //       leading: const Icon(Icons.add_location_sharp),
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) {
          //     return const Divider();    //Para realizar separador en la iteración.
          //   },
          // ),




        


         
            
          
       
      ),
    );
  }
}

  List<String> sitiosTuristicos = [
    "Torre Eiffel (Francia)",
    "Estatua de la Libertad (EE. UU.)",
    "Coliseo (Italia)",
    "Gran Muralla China (China)",
    "Machu Picchu (Perú)",
    "Taj Mahal (India)",
    "Pirámides de Giza (Egipto)",
    "Stonehenge (Reino Unido)",
    "Sagrada Familia (España)",
    "Cristo Redentor (Brasil)",
    "Acropolis de Atenas (Grecia)",
    "Parque Nacional Yellowstone (EE. UU.)",
    "Montañas Rocosas (Canadá)",
    "Puente de Brooklyn (EE. UU.)",
    "Catedral de San Basilio (Rusia)",
    "Big Ben (Reino Unido)",
    "Plaza Mayor (España)",
    "Museo del Louvre (Francia)",
    "Ópera de Sídney (Australia)",
    "Jardines de Keukenhof (Países Bajos)",
    "Alhambra (España)",
    "Gran Cañón (EE. UU.)",
    "Basílica de San Pedro (Vaticano)",
    "Isla de Pascua (Chile)",
    "Cataratas del Iguazú (Argentina/Brasil)",
    "Parque Güell (España)",
    "Mont Saint-Michel (Francia)",
    "Museo Británico (Reino Unido)",
    "Plaza de San Marcos (Italia)",
    "Puente de la Torre (Reino Unido)",
    "Ruinas de Petra (Jordania)",
    "Isla Santorini (Grecia)",
    "Chernobyl (Ucrania)",
    "Ciudad Prohibida (China)",
    "Rascacielos Burj Khalifa (Emiratos Árabes Unidos)",
    "Gran Barrera de Coral (Australia)",
    "Valle de los Reyes (Egipto)",
    "Cascadas de Niagara (Canadá/EE. UU.)",
    "Plaza de los Tres Poderes (Brasil)",
    "Jardines de Versalles (Francia)",
    "Catedral de Notre-Dame (Francia)",
    "Parque Nacional Banff (Canadá)",
    "El Cairo (Egipto)",
    "Isla Galápagos (Ecuador)",
    "Museo de la Acrópolis (Grecia)",
    "Murallas de Dubrovnik (Croacia)",
    "Monte Fuji (Japón)",
    "Museo de Arte Moderno (EE. UU.)",
    "Mercado de Tsukiji (Japón)",
    "La Habana Vieja (Cuba)",
    "Templo de Angkor Wat (Camboya)",
    "Puente Golden Gate (EE. UU.)",
    "Palacio de Buckingham (Reino Unido)",
    "Parques Nacionales de Torres del Paine (Chile)",
    "Ruinas de Chichén Itzá (México)",
    "Plaza de la Ciudad Vieja (República Checa)",
    "Monumento a Lincoln (EE. UU.)",
    "Museo del Prado (España)",
    "Parque Nacional Yosemite (EE. UU.)",
    "Isla de Skye (Escocia)",
    "Templo de Luxor (Egipto)",
    "Lago Baikal (Rusia)",
    "Parque Nacional Serengeti (Tanzania)",
    "Catedral de Chartres (Francia)",
    "Torres Petronas (Malasia)",
    "Montañas de los Alpes (Europa)",
    "Plaza de la Revolución (Cuba)",
    "Barrio Gótico de Barcelona (España)",
    "El Burj Al Arab (Emiratos Árabes Unidos)",
    "Parque Nacional Torres del Paine (Chile)",
    "Palacio de Versailles (Francia)",
    "Ciudad Vieja de Jerusalén (Israel)",
    "Templo del Cielo (China)",
    "Barrio de Montmartre (Francia)",
    "Mercado de Marrakech (Marruecos)",
    "Murallas de Cartagena (Colombia)",
    "Parque Nacional Kruger (Sudáfrica)",
    "Palacio de Westminster (Reino Unido)",
    "Catedral de San Pablo (Reino Unido)",
    "Isla de Koh Phi Phi (Tailandia)",
    "Ruinas de Tikal (Guatemala)",
    "Parque Nacional Zion (EE. UU.)",
    "Plaza de la Constitución (México)",
    "Catedral de Milán (Italia)",
    "Isla de Bali (Indonesia)",
    "La Muralla China de Jinshanling (China)",
    "Parque Nacional de los Fiordos (Nueva Zelanda)",
    "La Ruta de la Seda (Asia Central)",
    "Isla de Fernando de Noronha (Brasil)",
    "Valle Sagrado (Perú)",
    "Museo Van Gogh (Países Bajos)",
    "Isla de Flores (Indonesia)",
    "Parque Nacional de Yellowstone (EE. UU.)",
    "Templo de Apolo en Delfos (Grecia)",
    "Montaña de los Siete Colores (Perú)",
    "Cañón del Antílope (EE. UU.)",
    "La Mezquita de Sheikh Zayed (Emiratos Árabes Unidos)",
    "Pyramids of Teotihuacan (México)",
    "Glaciar Perito Moreno (Argentina)",
    "Torres de Tóquio (Japón)"
  ];
