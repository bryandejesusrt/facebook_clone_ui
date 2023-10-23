import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HireMe extends StatelessWidget {
  const HireMe({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Color para la barra de notificaciones
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrátame'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Como contactarme',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              CachedNetworkImage(
                  imageUrl:
                      'https://media.licdn.com/dms/image/D4D03AQEhksMyuissKA/profile-displayphoto-shrink_800_800/0/1695239262394?e=2147483647&v=beta&t=yGdM1Dn6b2SD_zK74UwLYyYI6N7WHtPoL81mavumIk4'),
              const SizedBox(height: 20.0),
              const Text(
                '''¡Bryan De Jesus Rosa Tavarez
Desarrollador de Software

Datos de Contacto:

Correo Electrónico: bryandejesusrt@gmail.com
Teléfono: 1+829-889-5669
LinkedIn: https://www.linkedin.com/in/bryan-rt15/
Portafolio: https://bryan-r15.github.io/CV-Bryan-Rosa/
Ubicación: Santo Domingo Republica Dominicana


Resumen Profesional: 
Soy un Desarrollador de Software apasionado y altamente motivado con 4 años de experiencia en desarrollo de software. Mi objetivo es brindar soluciones por medio de la tecnologia y el uso de aplicaciones. Mi enfoque principal es el desarrollo de aplicaciones moviles, aplicaciones web, embebidad , el analisis de datos etc..

Habilidades Clave:
desarrollador frontend
desarrollador backend
gestión de proyectos
solución de problemas
Scrum Master
Tecnico en reparacion dispositivos electronicos


Experiencia Laboral:
Cyclopesoft - Desarrollador de Software
Cargo: Desarrollador de Software
Fecha de Inicio - Fecha de Finalización:  2020 - Actualidad
Descripción: Desarrollo de aplicaciones web y móviles para clientes de la empresa.


Orionteck - Desarrollador de Software
Cargo: Desarrollador de Software
Fecha de Inicio - Fecha de Finalización:  2018 - 2020
Descripción: Desarrollo de aplicaciones web y móviles para clientes de la empresa.



Educación:
Instituto Tecnologico de las americas (ITLA) - Ingenieria en Software
Título:   Ingenieria en Software  
Fecha de Graduación: 2024
''',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center, // Alinea el texto al centro
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Acción a realizar cuando se presiona el botón "Siguiente"
                },
                child: const Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
