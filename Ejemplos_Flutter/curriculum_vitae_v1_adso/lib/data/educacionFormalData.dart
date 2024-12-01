import 'package:flutter/material.dart';

List<Map<String, dynamic>> listaformacionAcademica = [
  {
    'id': 1,
    'titulo': 'Ingeniería en Sistemas',
    'anioFinalizacion': '2023',
    'tipoEstudio': 'Pregrado',
    'institucion' : 'Harvard University',
    'color': Colors.blue, // Azul para Pregrado
  },
  {
    'id': 2,
    'titulo': 'Licenciatura en Informática',
    'anioFinalizacion': '2022',
    'tipoEstudio': 'Pregrado',
    'institucion' : 'Stanford University',
    'color': Colors.red, // Azul para Pregrado
  },
  {
    'id': 3,
    'titulo': 'Análisis y Desarrollo de Software',
    'anioFinalizacion': '2024',
    'tipoEstudio': 'Técnico',
    'institucion' : 'Massachusetts Institute of Technology (MIT)',
    'color': Colors.green, // Verde para Técnico
  },
  {
    'id': 4,
    'titulo': 'Ciencia de Datos',
    'anioFinalizacion': '2025',
    'tipoEstudio': 'Posgrado',
    'institucion' : 'University of California, Berkeley',
    'color': Colors.orange, // Naranja para Posgrado
  },
  {
    'id': 5,
    'titulo': 'Máster en Inteligencia Artificial',
    'anioFinalizacion': '2026',
    'tipoEstudio': 'Maestría',
    'institucion' : 'Princeton University',
    'color': Colors.purple, // Púrpura para Maestría
  },
  {
    'id': 6,
    'titulo': 'Ingeniería en Computación',
    'anioFinalizacion': '2023',
    'tipoEstudio': 'Pregrado',
    'institucion' : 'Yale University',
    'color': Colors.pink, // Azul para Pregrado
  },
  {
    'id': 7,
    'titulo': 'Diplomado en Desarrollo de Aplicaciones Móviles',
    'anioFinalizacion': '2023',
    'tipoEstudio': 'Técnico',
    'institucion' : 'Columbia University',
    'color': Colors.green, // Verde para Técnico
  },
  {
    'id': 8,
    'titulo': 'Máster en Big Data y Análisis de Datos',
    'anioFinalizacion': '2025',
    'tipoEstudio': 'Maestría',
    'institucion' : 'University of Chicago',
    'color': Colors.purple, // Púrpura para Maestría
  },
  {
    'id': 9,
    'titulo': 'Licenciatura en Ciencias de la Computación',
    'anioFinalizacion': '2022',
    'tipoEstudio': 'Pregrado',
    'institucion' : 'California Institute of Technology (Caltech)',
    'color': Colors.yellow, // Azul para Pregrado
  },
  {
    'id': 10,
    'titulo': 'Certificación en Desarrollo Web Full Stack',
    'anioFinalizacion': '2023',
    'tipoEstudio': 'Técnico',
    'institucion' : 'University of Pennsylvania',
    'color': Colors.green, // Verde para Técnico
  },
];

// Consulta ChatGPT para la realizacion de la lista: 
// Generar una lista de 10 elementos de maps en flutter que contenga lo siguiente para una hoja de vida 
// en apartado de formación académica: id, titulo, anioFinalizacion, tipoEstudio (técnico, pregrado, 
// posgrado, maestría) y un color según el tipo de estudio (con la clase Colors de Flutter). 
// Tener en cuenta que los 10 elementos son de carreras que tenga solo que ver con sistemas, informatica, 
// análisis y desarrollo de software, ciencia de datos, etc. 