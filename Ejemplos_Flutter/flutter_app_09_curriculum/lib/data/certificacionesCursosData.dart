import 'package:flutter/material.dart';

List<Map<String, dynamic>> estudiosYCursosLista = [
    {
      'id': 1,
      'titulo': 'Licenciatura en Ciencias de la Computación',
      'anioRealizacion': 2015,
      'categoria': 'Grado',
      'colorCategoria': Colors.blue,
      'descripcion': 'Estudio enfocado en el desarrollo de software, algoritmos, estructuras de datos, y teorías computacionales. Desarrollé una base sólida en programación, matemáticas y sistemas operativos.'
    },
    {
      'id': 2,
      'titulo': 'Curso de Desarrollo Web con React',
      'anioRealizacion': 2020,
      'categoria': 'Curso',
      'colorCategoria': Colors.green,
      'descripcion': 'Curso práctico que cubre las bases de React.js, incluyendo la creación de aplicaciones web interactivas y el uso de hooks, JSX, y manejo de estado.'
    },
    {
      'id': 3,
      'titulo': 'Certificación en AWS Certified Solutions Architect',
      'anioRealizacion': 2021,
      'categoria': 'Certificación',
      'colorCategoria': Colors.orange,
      'descripcion': 'Certificación que valida mis habilidades para diseñar aplicaciones escalables y económicas en la nube, específicamente utilizando Amazon Web Services.'
    },
    {
      'id': 4,
      'titulo': 'Diplomado en Inteligencia Artificial',
      'anioRealizacion': 2022,
      'categoria': 'Diplomado',
      'colorCategoria': Colors.deepPurple,
      'descripcion': 'Diplomado que me permitió adquirir conocimientos avanzados en machine learning, redes neuronales, procesamiento de lenguaje natural y análisis de grandes volúmenes de datos.'
    },
    {
      'id': 5,
      'titulo': 'Curso de Desarrollo en Swift para iOS',
      'anioRealizacion': 2021,
      'categoria': 'Curso',
      'colorCategoria': Colors.purple,
      'descripcion': 'Curso enfocado en el desarrollo de aplicaciones para iOS utilizando Swift, cubriendo desde lo básico hasta la implementación de características avanzadas como notificaciones push y bases de datos locales.'
    },
    {
      'id': 6,
      'titulo': 'Bootcamp de Desarrollo Full Stack',
      'anioRealizacion': 2020,
      'categoria': 'Bootcamp',
      'colorCategoria': Colors.red,
      'descripcion': 'Intensivo bootcamp de 12 semanas que cubre tanto frontend como backend, usando tecnologías como Node.js, React.js, bases de datos SQL y NoSQL, y despliegue en la nube.'
    },
    {
      'id': 7,
      'titulo': 'Certificación en Google Cloud Architect',
      'anioRealizacion': 2021,
      'categoria': 'Certificación',
      'colorCategoria': Colors.cyan,
      'descripcion': 'Certificación que valida mis habilidades en arquitectura y gestión de soluciones cloud en Google Cloud, incluyendo redes, almacenamiento y seguridad.'
    },
    {
      'id': 8,
      'titulo': 'Curso de Python para Ciencia de Datos',
      'anioRealizacion': 2019,
      'categoria': 'Curso',
      'colorCategoria': Colors.indigo,
      'descripcion': 'Curso centrado en el uso de Python para análisis de datos, visualización, y machine learning utilizando bibliotecas como Pandas, NumPy, Matplotlib y Scikit-Learn.'
    },
    {
      'id': 9,
      'titulo': 'Diplomado en Arquitectura de Software',
      'anioRealizacion': 2023,
      'categoria': 'Diplomado',
      'colorCategoria': Colors.teal,
      'descripcion': 'Diplomado que profundiza en el diseño y la arquitectura de software, patrones de diseño, arquitectura orientada a servicios, y soluciones escalables para aplicaciones empresariales.'
    },
    {
      'id': 10,
      'titulo': 'Curso de Programación en Java',
      'anioRealizacion': 2018,
      'categoria': 'Curso',
      'colorCategoria': Colors.amber,
      'descripcion': 'Curso que cubre las bases de la programación orientada a objetos en Java, incluyendo estructuras de datos, manejo de excepciones, y principios de programación robusta.'
    },
    {
      'id': 11,
      'titulo': 'Certificación en Scrum Master',
      'anioRealizacion': 2021,
      'categoria': 'Certificación',
      'colorCategoria': Colors.blueGrey,
      'descripcion': 'Certificación en Scrum Master que me capacita para liderar equipos ágiles, facilitando las reuniones y asegurando que se sigan los principios y valores de Scrum en el desarrollo de software.'
    },
    {
      'id': 12,
      'titulo': 'Curso de Blockchain para Desarrolladores',
      'anioRealizacion': 2021,
      'categoria': 'Curso',
      'colorCategoria': Colors.deepOrange,
      'descripcion': 'Curso que me proporcionó los conocimientos necesarios sobre blockchain, contratos inteligentes, y desarrollo de aplicaciones descentralizadas (dApps) utilizando Ethereum.'
    },
    {
      'id': 13,
      'titulo': 'Certificación en Data Science con R',
      'anioRealizacion': 2020,
      'categoria': 'Certificación',
      'colorCategoria': Colors.greenAccent,
      'descripcion': 'Certificación que valida mis competencias en el uso del lenguaje R para análisis estadístico, visualización de datos y modelado predictivo.'
    },
    {
      'id': 14,
      'titulo': 'Curso de Testing de Software y Automatización',
      'anioRealizacion': 2020,
      'categoria': 'Curso',
      'colorCategoria': Colors.pink,
      'descripcion': 'Curso enfocado en las mejores prácticas para pruebas de software, incluyendo pruebas unitarias, pruebas de integración, y automatización utilizando herramientas como Selenium y JUnit.'
    },
    {
      'id': 15,
      'titulo': 'Diplomado en Desarrollo de Aplicaciones Móviles',
      'anioRealizacion': 2022,
      'categoria': 'Diplomado',
      'colorCategoria': Colors.tealAccent,
      'descripcion': 'Diplomado que cubre el desarrollo de aplicaciones móviles para Android e iOS, abarcando desde la creación de interfaces hasta la integración con servicios en la nube.'
    },
    {
      'id': 16,
      'titulo': 'Curso de Ciberseguridad para Desarrolladores',
      'anioRealizacion': 2021,
      'categoria': 'Curso',
      'colorCategoria': Colors.redAccent,
      'descripcion': 'Curso que me proporcionó los conocimientos necesarios para implementar prácticas de seguridad en el desarrollo de software, incluyendo la protección de datos y la gestión de vulnerabilidades.'
    },
    {
      'id': 17,
      'titulo': 'Certificación en Kubernetes',
      'anioRealizacion': 2021,
      'categoria': 'Certificación',
      'colorCategoria': Colors.blue,
      'descripcion': 'Certificación que valida mis habilidades en la orquestación de contenedores utilizando Kubernetes, cubriendo desde la instalación hasta la implementación de aplicaciones en entornos de producción.'
    },
    {
      'id': 18,
      'titulo': 'Curso de Programación Funcional con Scala',
      'anioRealizacion': 2019,
      'categoria': 'Curso',
      'colorCategoria': Colors.orangeAccent,
      'descripcion': 'Curso que me introdujo a la programación funcional utilizando Scala, cubriendo conceptos como inmutabilidad, funciones puras y estructuras de datos funcionales.'
    },
    {
      'id': 19,
      'titulo': 'Diplomado en Big Data y Análisis de Datos',
      'anioRealizacion': 2023,
      'categoria': 'Diplomado',
      'colorCategoria': Colors.yellow,
      'descripcion': 'Diplomado que abarca el procesamiento y análisis de grandes volúmenes de datos utilizando tecnologías como Hadoop, Spark, y herramientas de análisis en tiempo real.'
    },
    {
      'id': 20,
      'titulo': 'Curso de Desarrollo con Node.js',
      'anioRealizacion': 2020,
      'categoria': 'Curso',
      'colorCategoria': Colors.indigoAccent,
      'descripcion': 'Curso que me enseñó a desarrollar aplicaciones web y APIs utilizando Node.js, abordando temas como manejo de rutas, middleware, y conexión a bases de datos NoSQL.'
    },
  ];

  // Consulta ChatGPT para la realizacion de la lista:
  // Crea un list map de 20 elementos en Dart para registrar los estudios y cursos realizados por un desarrollador
  //  que contenga id, titulo, anioRealizacion, categoría, colorCategoria (clase Colors de Dart) que es un color 
  //  según la categoría, descripción (de 1 parrafo).