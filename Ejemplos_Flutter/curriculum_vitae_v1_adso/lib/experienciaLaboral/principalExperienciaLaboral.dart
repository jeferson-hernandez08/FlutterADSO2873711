import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrincipalExperienciaLaboral extends StatefulWidget {
  const PrincipalExperienciaLaboral({super.key});

  @override
  State<PrincipalExperienciaLaboral> createState() => _PrincipalExperienciaLaboralState();
}

class _PrincipalExperienciaLaboralState extends State<PrincipalExperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiencia Laboral"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: listaExperienciaDesarrollador.length,  
        itemBuilder:(BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(listaExperienciaDesarrollador[index]["titulo"]),
              subtitle: Text(listaExperienciaDesarrollador[index]["categoria"]),
              leading: Text(listaExperienciaDesarrollador[index]["fechaInicio"]),
            ),
          );
        },
      ),
    );
  }
}