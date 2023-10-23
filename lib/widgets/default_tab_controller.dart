import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabControllerDefault extends StatelessWidget {
  const TabControllerDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Número de botones
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Videos',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Para ti'),
              Tab(text: 'En vivo'),
              Tab(text: 'Videojuegos'),
              Tab(text: 'Siguiendo'),
            ],
            labelColor: Colors.blue, // Color del botón seleccionado
            unselectedLabelColor:
                Colors.grey, // Color de los botones no seleccionados
            indicatorColor:
                Colors.blue, // Color de la línea debajo del botón seleccionado
            indicatorWeight:
                3.0, // Grosor de la línea debajo del botón seleccionado
          ),
        ),
        body: const TabBarView(
          children: [
            // Contenido del botón "Para ti"
            Center(
              child: Text('Contenido para ti'),
            ),
            // Contenido del botón "En vivo"
            Center(
              child: Text('Contenido en vivo'),
            ),
            // Contenido del botón "Videojuegos"
            Center(
              child: Text('Contenido de videojuegos'),
            ),
            // Contenido del botón "Siguiendo"
            Center(
              child: Text('Contenido que sigues'),
            ),
          ],
        ),
      ),
    );
  }
}
