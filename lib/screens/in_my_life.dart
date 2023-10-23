import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class InMyLife extends StatefulWidget {
  const InMyLife({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InMyLifeState createState() => _InMyLifeState();
}

class _InMyLifeState extends State<InMyLife> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then((_) {
        // Asegúrate de que el video se inicie automáticamente.
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Color para la barra de notificaciones
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('En mi vida'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Como influye la película en mi vida',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              // Widget para mostrar el video
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              const SizedBox(height: 20.0),
              // Botones de control del video
              IconButton(
                icon: Icon(_controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
              ),

              const SizedBox(height: 20.0),
              const Text(
                '''"¡Hola a todos! Hoy quiero hablarles sobre una película que ha tenido un impacto significativo en mi vida como desarrollador de software, y esa película es 'The Social Network'.

Como programador, me dedico a crear soluciones tecnológicas y a enfrentar desafíos en el mundo de la programación. 'The Social Network' es importante para mí porque ofrece una perspectiva fascinante sobre la innovación, la ambición y los desafíos tecnológicos que enfrentamos en la industria.

Esta película narra la historia de Mark Zuckerberg y la creación de Facebook. A pesar de los aspectos controvertidos de la historia, la película destaca la pasión y la dedicación que a menudo encontramos en el mundo de la tecnología. Ver a un joven emprendedor programando en su dormitorio y llevando una idea a una plataforma utilizada por millones de personas me inspira.

'The Social Network' también pone de relieve la importancia de la ética y la responsabilidad en el desarrollo de software y la gestión de datos. Nos recuerda que las decisiones que tomamos en el mundo digital tienen un impacto real en la vida de las personas.

La banda sonora innovadora de Trent Reznor y Atticus Ross, así como la dirección magistral de David Fincher, hacen que la película sea una experiencia cinematográfica increíble y una inspiración para cualquier persona que trabaje en el campo de la tecnología.

En resumen, 'The Social Network' es importante en mi vida como desarrollador de software porque me motiva a ser creativo, ético y a enfrentar los desafíos tecnológicos con pasión. Si aún no la has visto, te animo a hacerlo. ¡Gracias por escuchar!"''',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center, // Alinea el texto al centro
              ),
            ],
          ),
        ),
      ),
    );
  }
}
