import 'package:flutter/material.dart';

List<Map<String, dynamic>> cursos = [
  {
    'id': 1,
    'titulo': 'Introducción a Flutter',
    'anioRealizacion': '2023',
    'categoria': 'Desarrollo Móvil',
    'colorCategoria': Colors.blue,
    'descripcion': 'Curso de introducción a Flutter, donde se enseñan los fundamentos de la creación de aplicaciones móviles multiplataforma con Flutter.'
  },
  {
    'id': 2,
    'titulo': 'Dominando Dart',
    'anioRealizacion': '2023',
    'categoria': 'Lenguajes de Programación',
    'colorCategoria': Colors.green,
    'descripcion': 'Curso avanzado de Dart, el lenguaje que potencia a Flutter, cubriendo desde lo básico hasta conceptos avanzados.'
  },
  {
    'id': 3,
    'titulo': 'Arquitectura de Software',
    'anioRealizacion': '2022',
    'categoria': 'Desarrollo Backend',
    'colorCategoria': Colors.orange,
    'descripcion': 'Curso que cubre los principios de diseño y arquitectura de software, ideal para aquellos que desean construir sistemas escalables y mantenibles.'
  },
  {
    'id': 4,
    'titulo': 'Bases de Datos Relacionales',
    'anioRealizacion': '2021',
    'categoria': 'Bases de Datos',
    'colorCategoria': Colors.red,
    'descripcion': 'Este curso aborda los principios fundamentales de las bases de datos relacionales, desde la creación de esquemas hasta la optimización de consultas.'
  },
  {
    'id': 5,
    'titulo': 'Node.js para Backend',
    'anioRealizacion': '2023',
    'categoria': 'Desarrollo Backend',
    'colorCategoria': Colors.blueGrey,
    'descripcion': 'Aprende a crear aplicaciones robustas con Node.js, cubriendo la creación de APIs RESTful y manejo de bases de datos.'
  },
  {
    'id': 6,
    'titulo': 'Introducción a Docker',
    'anioRealizacion': '2022',
    'categoria': 'DevOps',
    'colorCategoria': Colors.cyan,
    'descripcion': 'Curso introductorio a Docker para entender cómo contenerizar aplicaciones y manejar ambientes de desarrollo y producción eficientemente.'
  },
  {
    'id': 7,
    'titulo': 'Desarrollo Web con React',
    'anioRealizacion': '2023',
    'categoria': 'Desarrollo Frontend',
    'colorCategoria': Colors.pink,
    'descripcion': 'Curso donde se exploran las bases del desarrollo frontend con React, uno de los frameworks más populares para aplicaciones web modernas.'
  },
  {
    'id': 8,
    'titulo': 'Machine Learning con Python',
    'anioRealizacion': '2022',
    'categoria': 'Inteligencia Artificial',
    'colorCategoria': Colors.purple,
    'descripcion': 'Curso sobre los fundamentos de Machine Learning utilizando Python, cubriendo algoritmos y técnicas esenciales en el análisis de datos.'
  },
  {
    'id': 9,
    'titulo': 'Fundamentos de UX/UI',
    'anioRealizacion': '2021',
    'categoria': 'Diseño',
    'colorCategoria': Colors.indigo,
    'descripcion': 'Curso enfocado en los principios fundamentales de UX/UI para diseñar interfaces de usuario atractivas y usables.'
  },
  {
    'id': 10,
    'titulo': 'Cloud Computing con AWS',
    'anioRealizacion': '2023',
    'categoria': 'Cloud',
    'colorCategoria': Colors.amber,
    'descripcion': 'Curso práctico sobre servicios de AWS, desde la creación de instancias EC2 hasta el uso de S3, RDS y otros servicios clave.'
  },
  {
    'id': 11,
    'titulo': 'Desarrollo de APIs con Python y Flask',
    'anioRealizacion': '2022',
    'categoria': 'Desarrollo Backend',
    'colorCategoria': Colors.deepOrange,
    'descripcion': 'Curso que cubre la creación de APIs RESTful con Python usando el framework Flask, ideal para backend de aplicaciones web.'
  },
  {
    'id': 12,
    'titulo': 'Seguridad en el Desarrollo de Software',
    'anioRealizacion': '2021',
    'categoria': 'Seguridad',
    'colorCategoria': Colors.redAccent,
    'descripcion': 'Curso sobre mejores prácticas para asegurar aplicaciones, desde la gestión de vulnerabilidades hasta el uso de HTTPS y cifrado de datos.'
  },
  {
    'id': 13,
    'titulo': 'Desarrollo con Angular',
    'anioRealizacion': '2023',
    'categoria': 'Desarrollo Frontend',
    'colorCategoria': Colors.greenAccent,
    'descripcion': 'Curso de desarrollo web con Angular, donde se aprenden conceptos como componentes, directivas, y servicios.'
  },
  {
    'id': 14,
    'titulo': 'Desarrollo en Swift para iOS',
    'anioRealizacion': '2022',
    'categoria': 'Desarrollo Móvil',
    'colorCategoria': Colors.teal,
    'descripcion': 'Curso que cubre el desarrollo de aplicaciones móviles nativas para iOS utilizando Swift, cubriendo desde interfaces hasta persistencia de datos.'
  },
  {
    'id': 15,
    'titulo': 'Blockchain para Desarrolladores',
    'anioRealizacion': '2023',
    'categoria': 'Tecnologías Emergentes',
    'colorCategoria': Colors.blueAccent,
    'descripcion': 'Introducción a la tecnología Blockchain, donde se aprenden sus principios, aplicaciones y cómo desarrollar contratos inteligentes.'
  },
  {
    'id': 16,
    'titulo': 'Patrones de Diseño en Java',
    'anioRealizacion': '2022',
    'categoria': 'Desarrollo Backend',
    'colorCategoria': Colors.deepPurple,
    'descripcion': 'Este curso enseña los patrones de diseño más utilizados en Java, optimizando la estructura y flexibilidad del código.'
  },
  {
    'id': 17,
    'titulo': 'Big Data con Hadoop',
    'anioRealizacion': '2021',
    'categoria': 'Big Data',
    'colorCategoria': Colors.lime,
    'descripcion': 'Curso enfocado en el uso de Hadoop para manejar y analizar grandes volúmenes de datos de manera distribuida.'
  },
  {
    'id': 18,
    'titulo': 'Desarrollo de Videojuegos con Unity',
    'anioRealizacion': '2023',
    'categoria': 'Desarrollo de Videojuegos',
    'colorCategoria': Colors.green,
    'descripcion': 'Curso introductorio al desarrollo de videojuegos utilizando Unity, cubriendo desde la creación de escenarios hasta la programación de comportamientos.'
  },
  {
    'id': 19,
    'titulo': 'Desarrollo de Aplicaciones con Kotlin',
    'anioRealizacion': '2022',
    'categoria': 'Desarrollo Móvil',
    'colorCategoria': Colors.purpleAccent,
    'descripcion': 'Curso centrado en el desarrollo de aplicaciones móviles nativas para Android utilizando Kotlin, desde interfaces hasta integración de servicios.'
  },
  {
    'id': 20,
    'titulo': 'Automatización de Pruebas con Selenium',
    'anioRealizacion': '2023',
    'categoria': 'Testing',
    'colorCategoria': Colors.yellow,
    'descripcion': 'Curso sobre el uso de Selenium para la automatización de pruebas en aplicaciones web, mejorando la eficiencia del proceso de pruebas.'
  }
];