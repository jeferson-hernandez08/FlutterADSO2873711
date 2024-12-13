import 'dart:convert';
import 'package:http/http.dart' as http;      // Obtenemos este import de la documentacion de flutter: Docs/benyond UI/Data & Backend/Networking & http/Fetch data from the internet

const String baseUrl = "https://reqres.in/api";

Future obtenerUsuarios() async {        // Peticion asyncrona y promesas     // Es lo mismo fetchUsers obtenerUsuarios
  final response = await http.get(Uri.parse('$baseUrl/users?page=1'));             // Vamos a obtener a traves del protocolo http y el metodo get vamos a hacer un consumo del recurso que esa en la url "https://reqres.in/api"
                                                                           // Con el await esperamos a que se ejecute y lo guardamos en la variable tipo response
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, // then parse the JSON.
    //print(jsonDecode(response.body));     // Vamos a mostrarlo
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response, // then throw an exception.
    throw Exception('Problemas al obtener los usuarios');
  }
}


//URL API: https://reqres.in/