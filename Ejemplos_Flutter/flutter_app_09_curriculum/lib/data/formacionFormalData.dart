import 'package:flutter/material.dart';

List<Map<String, dynamic>> formacionAcademicaLista = [
    {
      'id': 1,
      'titulo': 'Técnico en Desarrollo de Software',
      'anioFinalizacion': 2020,
      'tipoEstudio': 'Técnico',
      'color': Colors.blue[700] // Color asociado al tipo de estudio
    },
    {
      'id': 2,
      'titulo': 'Licenciatura en Psicología',
      'anioFinalizacion': 2022,
      'tipoEstudio': 'Pregrado',
      'color': Colors.green[700]
    },
    {
      'id': 3,
      'titulo': 'Maestría en Inteligencia Artificial',
      'anioFinalizacion': 2024,
      'tipoEstudio': 'Maestría',
      'color': Colors.purple[700]
    },
    {
      'id': 4,
      'titulo': 'Diplomado en Marketing Digital',
      'anioFinalizacion': 2021,
      'tipoEstudio': 'Posgrado',
      'color': Colors.orange[700]
    },
    {
      'id': 5,
      'titulo': 'Técnico en Redes y Telecomunicaciones',
      'anioFinalizacion': 2019,
      'tipoEstudio': 'Técnico',
      'color': Colors.blue[700]
    },
    {
      'id': 6,
      'titulo': 'Ingeniería en Sistemas Computacionales',
      'anioFinalizacion': 2023,
      'tipoEstudio': 'Pregrado',
      'color': Colors.green[700]
    },
    {
      'id': 7,
      'titulo': 'Maestría en Administración de Empresas',
      'anioFinalizacion': 2025,
      'tipoEstudio': 'Maestría',
      'color': Colors.purple[700]
    },
    {
      'id': 8,
      'titulo': 'Especialización en Derecho Laboral',
      'anioFinalizacion': 2022,
      'tipoEstudio': 'Posgrado',
      'color': Colors.orange[700]
    },
    {
      'id': 9,
      'titulo': 'Técnico en Diseño Gráfico',
      'anioFinalizacion': 2021,
      'tipoEstudio': 'Técnico',
      'color': Colors.blue[700]
    },
    {
      'id': 10,
      'titulo': 'Doctorado en Ciencias Sociales',
      'anioFinalizacion': 2026,
      'tipoEstudio': 'Posgrado',
      'color': Colors.red[700]
    }
  ];

  // Consulta ChatGPT para la realizacion de la lista: 
  // Generar una lista de 10 elementos de maps en flutter que contenga lo siguiente para una hoja de vida
  // en apartado de formación académica: id, titulo, anioFinalizacion, tipoEstudio (técnico, pregrado,
  // posgrado, maestría) y un color según el tipo de estudio (con la clase Colors de Flutter)
