import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:curriculum_vitae_v1_adso/perfilPersonal/perfilPersonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      appBar: AppBar(
        title: Center(child: Text(miControlador.Titulo)),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Image(image: NetworkImage("assets/images/logo_playvox.png")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("assets/images/Foto_perfil.jpg"),
          
                ),
              ),
            ),
            Divider(
              color:  Colors.orange, 
              height: 2,
              ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Curriculum Vitae V2 - ADSO");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Información Personal"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigator.pop(context);
                miControlador.cambiarTitulo("Información personal");
                Get.to(PerfilPersonal());
              },
            ),
            ListTile(
              title: Text("Educación Formal"),
              leading: Icon(Icons.school),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Educación Formal");
                Navigator.pop(context);
                Get.defaultDialog(
                  title: "Alert",
                  middleText: "Esta sección pronto será publicada ...",
                  onConfirm: () {

                  },
                  onCancel: (){

                  }
                );
              },
            ),
            ListTile(
              title: Text("Formación Continuada"),
              leading: Icon(Icons.book),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Educación continuada");
                Navigator.pop(context);
                Get.snackbar(
                  "Atención!", "Esta sección aún no está disponible",
                  backgroundColor: Colors.red[300],
                  colorText: Colors.white,
                  icon: Icon(Icons.dangerous)
                );
              },
            ),
            ListTile(
              title: Text("Publicaciones"),
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Publicaciones"); // Estamos llamando al metodo cambiar titulo
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Experiencia Laboral"),
              leading: Icon(Icons.work_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Experiencia Laboral");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Referencias"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Referencias");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Acerca de"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                miControlador.cambiarTitulo("Acerca de");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
