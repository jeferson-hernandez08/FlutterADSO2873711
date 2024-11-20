import 'package:flutter/material.dart'; 

List<Map<String, dynamic>> experienciaLaboralLista = [
    {
      'id': 1,
      'titulo': 'Desarrollador Backend',
      'fechaInicio': '2019-05-01',
      'fechaFin': '2021-12-31',
      'categoria': 'Backend',
      'colorCategoria': Colors.blue,
      'iconoCategoria': Icons.code,
      'funciones': [
        'Diseñar y mantener las API\'s RESTful para la integración de servicios internos y externos.',
        'Optimizar el rendimiento de bases de datos relacionales y no relacionales.',
        'Liderar equipos técnicos y colaborar con otros departamentos para entregar soluciones escalables.'
      ],
    },
    {
      'id': 2,
      'titulo': 'Desarrollador Frontend',
      'fechaInicio': '2018-01-01',
      'fechaFin': '2019-04-30',
      'categoria': 'Frontend',
      'colorCategoria': Colors.green,
      'iconoCategoria': Icons.web,
      'funciones': [
        'Desarrollar interfaces de usuario responsivas utilizando frameworks modernos como React.',
        'Colaborar con diseñadores UX/UI para garantizar una experiencia de usuario óptima.',
        'Implementar pruebas unitarias y de integración para asegurar la calidad del código.'
      ],
    },
    {
      'id': 3,
      'titulo': 'Ingeniero de Software',
      'fechaInicio': '2021-01-01',
      'fechaFin': '2023-08-31',
      'categoria': 'Full Stack',
      'colorCategoria': Colors.orange,
      'iconoCategoria': Icons.build,
      'funciones': [
        'Desarrollar aplicaciones de principio a fin, desde el diseño hasta el despliegue.',
        'Colaborar con equipos multifuncionales para planificar y desarrollar nuevas funcionalidades.',
        'Implementar arquitecturas de microservicios y gestionar la integración continua.'
      ],
    },
    {
      'id': 4,
      'titulo': 'Desarrollador iOS',
      'fechaInicio': '2017-03-01',
      'fechaFin': '2018-12-31',
      'categoria': 'Mobile',
      'colorCategoria': Colors.purple,
      'iconoCategoria': Icons.phone_iphone,
      'funciones': [
        'Desarrollar aplicaciones móviles para iOS usando Swift y Objective-C.',
        'Trabajar con APIs RESTful y almacenar datos en CoreData.',
        'Optimizar el rendimiento de las aplicaciones móviles y realizar pruebas en dispositivos reales.'
      ],
    },
    {
      'id': 5,
      'titulo': 'Desarrollador Android',
      'fechaInicio': '2016-06-01',
      'fechaFin': '2017-02-28',
      'categoria': 'Mobile',
      'colorCategoria': Colors.teal,
      'iconoCategoria': Icons.phone_android,
      'funciones': [
        'Desarrollar aplicaciones para Android utilizando Java y Kotlin.',
        'Integrar servicios de geolocalización y notificaciones push.',
        'Realizar pruebas de UI/UX y mejorar la experiencia del usuario en dispositivos Android.'
      ],
    },
    {
      'id': 6,
      'titulo': 'Ingeniero DevOps',
      'fechaInicio': '2019-01-01',
      'fechaFin': '2021-06-30',
      'categoria': 'DevOps',
      'colorCategoria': Colors.cyan,
      'iconoCategoria': Icons.settings_applications,
      'funciones': [
        'Configurar y mantener la infraestructura en la nube para la ejecución de aplicaciones.',
        'Automatizar procesos de despliegue y gestión de servidores.',
        'Monitorear el rendimiento de las aplicaciones y garantizar su escalabilidad.'
      ],
    },
    {
      'id': 7,
      'titulo': 'Analista de Datos',
      'fechaInicio': '2015-08-01',
      'fechaFin': '2017-07-31',
      'categoria': 'Data Science',
      'colorCategoria': Colors.deepOrange,
      'iconoCategoria': Icons.bar_chart,
      'funciones': [
        'Realizar análisis estadísticos sobre grandes volúmenes de datos.',
        'Desarrollar modelos predictivos para mejorar la toma de decisiones empresariales.',
        'Colaborar con equipos de marketing y producto para generar informes de datos relevantes.'
      ],
    },
    {
      'id': 8,
      'titulo': 'Desarrollador de Juegos',
      'fechaInicio': '2020-03-01',
      'fechaFin': '2023-12-31',
      'categoria': 'Game Development',
      'colorCategoria': Colors.red,
      'iconoCategoria': Icons.videogame_asset,
      'funciones': [
        'Desarrollar videojuegos en Unity 3D con C#.',
        'Colaborar con diseñadores para crear mundos virtuales y mecánicas de juego.',
        'Optimizar el rendimiento y mejorar la experiencia de usuario en múltiples plataformas.'
      ],
    },
    {
      'id': 9,
      'titulo': 'Ingeniero de Seguridad',
      'fechaInicio': '2020-06-01',
      'fechaFin': '2022-12-31',
      'categoria': 'Cybersecurity',
      'colorCategoria': Colors.redAccent,
      'iconoCategoria': Icons.lock,
      'funciones': [
        'Implementar políticas de seguridad y gestión de accesos.',
        'Detectar y mitigar vulnerabilidades en aplicaciones web y redes corporativas.',
        'Realizar auditorías de seguridad y desarrollar procedimientos de respuesta ante incidentes.'
      ],
    },
    {
      'id': 10,
      'titulo': 'Consultor de Tecnología',
      'fechaInicio': '2016-02-01',
      'fechaFin': '2018-08-31',
      'categoria': 'Consultoría',
      'colorCategoria': Colors.brown,
      'iconoCategoria': Icons.business_center,
      'funciones': [
        'Brindar asesoría a empresas en la adopción de nuevas tecnologías.',
        'Realizar estudios de viabilidad y análisis de impacto de soluciones tecnológicas.',
        'Liderar proyectos de transformación digital para clientes internacionales.'
      ],
    },
    {
      'id': 11,
      'titulo': 'Líder Técnico',
      'fechaInicio': '2021-09-01',
      'fechaFin': '2024-04-30',
      'categoria': 'Leadership',
      'colorCategoria': Colors.amber,
      'iconoCategoria': Icons.group,
      'funciones': [
        'Liderar equipos de desarrollo ágiles en la creación de soluciones tecnológicas innovadoras.',
        'Colaborar con stakeholders para definir la visión tecnológica y los requisitos del producto.',
        'Gestionar y mentorizar a los miembros del equipo para optimizar el rendimiento y fomentar el crecimiento profesional.'
      ],
    },
    {
      'id': 12,
      'titulo': 'Desarrollador de Software',
      'fechaInicio': '2015-05-01',
      'fechaFin': '2016-01-31',
      'categoria': 'Software Development',
      'colorCategoria': Colors.blueGrey,
      'iconoCategoria': Icons.laptop_mac,
      'funciones': [
        'Desarrollar y mantener aplicaciones internas utilizando tecnologías como Java y Python.',
        'Trabajar con sistemas de bases de datos relacionales y no relacionales.',
        'Implementar soluciones de integración con sistemas externos a través de APIs.'
      ],
    },
    {
      'id': 13,
      'titulo': 'Desarrollador de APIs',
      'fechaInicio': '2017-01-01',
      'fechaFin': '2019-12-31',
      'categoria': 'Backend',
      'colorCategoria': Colors.indigo,
      'iconoCategoria': Icons.api,
      'funciones': [
        'Diseñar y mantener APIs RESTful eficientes y escalables.',
        'Implementar soluciones de autenticación y autorización utilizando OAuth2.',
        'Optimizar la conectividad con bases de datos y otros servicios de terceros.'
      ],
    },
    {
      'id': 14,
      'titulo': 'Tester de Software',
      'fechaInicio': '2014-02-01',
      'fechaFin': '2015-04-30',
      'categoria': 'Testing',
      'colorCategoria': Colors.pink,
      'iconoCategoria': Icons.bug_report,
      'funciones': [
        'Realizar pruebas de calidad en aplicaciones móviles y web.',
        'Redactar planes de prueba y automatizar pruebas utilizando herramientas como Selenium.',
        'Gestionar defectos y coordinar con los desarrolladores para la resolución de problemas.'
      ],
    },
    {
      'id': 15,
      'titulo': 'Ingeniero de Datos',
      'fechaInicio': '2021-02-01',
      'fechaFin': '2023-01-31',
      'categoria': 'Data Science',
      'colorCategoria': Colors.deepPurple,
      'iconoCategoria': Icons.insert_chart_outlined,
      'funciones': [
        'Desarrollar y mantener pipelines de datos para procesamiento en tiempo real.',
        'Aplicar técnicas de machine learning para mejorar la calidad de los datos.',
        'Optimizar el almacenamiento y procesamiento de grandes volúmenes de datos.'
      ],
    },
    {
      'id': 16,
      'titulo': 'Administrador de Bases de Datos',
      'fechaInicio': '2018-04-01',
      'fechaFin': '2020-12-31',
      'categoria': 'Database Administration',
      'colorCategoria': Colors.lightGreen,
      'iconoCategoria': Icons.storage,
      'funciones': [
        'Administrar bases de datos MySQL y PostgreSQL en ambientes de producción.',
        'Garantizar la seguridad, integridad y disponibilidad de los datos.',
        'Optimizar el rendimiento y realizar backups periódicos.'
      ],
    },
    {
      'id': 17,
      'titulo': 'Desarrollador de Blockchain',
      'fechaInicio': '2019-09-01',
      'fechaFin': '2023-06-30',
      'categoria': 'Blockchain',
      'colorCategoria': Colors.indigoAccent,
      'iconoCategoria': Icons.lock_clock,
      'funciones': [
        'Desarrollar aplicaciones descentralizadas (dApps) utilizando Ethereum y Solidity.',
        'Implementar contratos inteligentes y gestionarlos en la cadena de bloques.',
        'Colaborar en la creación de sistemas financieros descentralizados (DeFi).'
      ],
    },
    {
      'id': 18,
      'titulo': 'Arquitecto de Software',
      'fechaInicio': '2016-01-01',
      'fechaFin': '2019-12-31',
      'categoria': 'Architecture',
      'colorCategoria': Colors.blueAccent,
      'iconoCategoria': Icons.build_circle,
      'funciones': [
        'Diseñar arquitecturas escalables y robustas para aplicaciones empresariales.',
        'Asesorar a equipos de desarrollo sobre mejores prácticas de arquitectura.',
        'Evaluar y seleccionar tecnologías adecuadas para cada proyecto.'
      ],
    },
    {
      'id': 19,
      'titulo': 'Consultor de Cloud',
      'fechaInicio': '2017-03-01',
      'fechaFin': '2019-11-30',
      'categoria': 'Cloud Computing',
      'colorCategoria': Colors.lightBlue,
      'iconoCategoria': Icons.cloud,
      'funciones': [
        'Diseñar e implementar soluciones en la nube utilizando AWS, Azure o Google Cloud.',
        'Migrar infraestructuras locales a la nube para optimizar costos y escalabilidad.',
        'Brindar soporte continuo y garantizar el rendimiento de las soluciones en la nube.'
      ],
    },
    {
      'id': 20,
      'titulo': 'Ingeniero de Inteligencia Artificial',
      'fechaInicio': '2022-06-01',
      'fechaFin': '2024-11-19',
      'categoria': 'AI/ML',
      'colorCategoria': Colors.greenAccent,
      'iconoCategoria': Icons.memory,
      'funciones': [
        'Desarrollar y entrenar modelos de machine learning utilizando TensorFlow y PyTorch.',
        'Implementar soluciones basadas en inteligencia artificial para mejorar procesos empresariales.',
        'Realizar análisis de datos complejos y aplicar técnicas avanzadas de procesamiento de lenguaje natural.'
      ],
    },
  ];

  // Consulta ChatGPT para la realizacion de la lista:
  // Crea un list map de 20 elementos en Dart para registrar la experiencia laboral de un desarrollador 
  // que contenga id, titulo, fechaInicio, fechaFin, categoría, colorCategoria que es un color según la 
  // categoría, funciones (algunos de un párrafo y otros de 3 párrafos) y que contenga un ícono por categoría.