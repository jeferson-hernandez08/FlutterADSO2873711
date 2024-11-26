import 'package:curriculum_vitae_v1_adso/controllers/myController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'interfaz/principal.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  runApp(Principal());
}

Mycontroller miControlador = Get.find();  // Crea una instancia de la clase Mycontroller.