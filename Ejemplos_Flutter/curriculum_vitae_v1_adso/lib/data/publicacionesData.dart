import 'package:flutter/material.dart';

List<Map<String, dynamic>> listaPublicaciones = [
  {
    'id': 1,
    'tituloPublicacion': 'Introducción al Desarrollo Frontend con Flutter',
    'categoria': 'Frontend',
    'anioRealizacion': '2023',
    'colorCategoria': Colors.blue, // Color relacionado con Frontend
    'autores': 'Jeferson Hernandez | Juan Lopera', 
    'descripcion': 'En este artículo se aborda cómo utilizar Flutter para desarrollar interfaces de usuario interactivas y eficientes en aplicaciones móviles y web, enfocándose en la estructura de widgets y el manejo de estados.',
    'enlacePublicacion': 'https://ejemplo.com/frontend_flutter'
  },
  {
    'id': 2,
    'tituloPublicacion': 'Técnicas Avanzadas de Backend con Node.js',
    'categoria': 'Backend',
    'anioRealizacion': '2024',
    'colorCategoria': Colors.green, // Color relacionado con Backend
    'autores': 'Carlos Gómez',
    'descripcion': 'Este artículo explora técnicas avanzadas para la creación de APIs escalables utilizando Node.js, cubriendo conceptos como middleware, manejo de errores y optimización de rendimiento.',
    'enlacePublicacion': 'https://ejemplo.com/backend_nodejs'
  },
  {
    'id': 3,
    'tituloPublicacion': 'Desarrollo Fullstack con React y Express',
    'categoria': 'Fullstack',
    'anioRealizacion': '2021',
    'colorCategoria': Colors.orange, // Color relacionado con Fullstack
    'autores': 'Pedro Díaz',
    'descripcion': 'Este artículo proporciona una guía completa sobre cómo desarrollar aplicaciones Fullstack utilizando React para el frontend y Express para el backend, incluyendo ejemplos de integración entre ambas tecnologías.',
    'enlacePublicacion': 'https://ejemplo.com/fullstack_react_express'
  },
  {
    'id': 4,
    'tituloPublicacion': 'Optimización de Consultas en Bases de Datos SQL',
    'categoria': 'Bases de Datos',
    'anioRealizacion': '2019',
    'colorCategoria': Colors.purple, // Color relacionado con Bases de Datos
    'autores': 'Luis Rodríguez',
    'descripcion': 'Este artículo explica las mejores prácticas para optimizar consultas SQL en bases de datos relacionales, incluyendo técnicas de indexación, normalización y optimización de joins.',
    'enlacePublicacion': 'https://ejemplo.com/bases_de_datos_sql'
  },
  {
    'id': 5,
    'tituloPublicacion': 'Automatización de Pruebas con Selenium y Java',
    'categoria': 'Testing',
    'anioRealizacion': '2019',
    'colorCategoria': Colors.red, // Color relacionado con Testing
    'autores': 'Sandra López',
    'descripcion': 'En este artículo se presentan las mejores prácticas para la automatización de pruebas funcionales utilizando Selenium y Java, incluyendo la creación de scripts, integración con CI/CD y manejo de diferentes tipos de pruebas.',
    'enlacePublicacion': 'https://ejemplo.com/selenium_java_testing'
  },
  {
    'id': 6,
    'tituloPublicacion': 'Microservicios y su Implementación con Docker y Kubernetes',
    'categoria': 'Arquitectura',
    'anioRealizacion': '2020',
    'colorCategoria': Colors.cyan, // Color relacionado con Arquitectura
    'autores': 'David Martínez', 
    'descripcion': 'Este artículo explica cómo implementar una arquitectura de microservicios utilizando Docker y Kubernetes, abarcando desde la creación de contenedores hasta la orquestación de servicios en entornos de producción.',
    'enlacePublicacion': 'https://ejemplo.com/microservicios_docker_kubernetes'
  },
  {
    'id': 7,
    'tituloPublicacion': 'Implementación de GraphQL en Aplicaciones Web Modernas',
    'categoria': 'Frontend',
    'anioRealizacion': '2012',
    'colorCategoria': Colors.teal, // Color relacionado con Frontend
    'autores': 'Ricardo Pérez',
    'descripcion': 'En este artículo se discute la implementación de GraphQL para mejorar la comunicación entre el frontend y el backend, abordando sus beneficios y cómo integrarlo en aplicaciones web modernas.',
    'enlacePublicacion': 'https://ejemplo.com/graphql_frontend'
  },
];

// Consulta ChatGPT para la realizacion de la lista: 
// Crea un list map de 5 elementos en Dart para registrar las publicaciones   
// por un desarrollador  que contenga id, tituloPublicacion, categoría, colorCategoria (clase Colors  
// de Dart) que es un color según la categoría(Como por ejemplo si es frontend, backend, fullstack, 
// bases de datos, etc.), autores, descripción (de 1 parrafo), enlacePublicacion.