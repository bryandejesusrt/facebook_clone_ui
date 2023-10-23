import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutMovie extends StatelessWidget {
  const AboutMovie({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Color para la barra de notificaciones
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de la película'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'The social ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            CachedNetworkImage(
                imageUrl:
                    'https://escribecine.com.mx/wp-content/uploads/2018/11/redsocial.png'),
            const SizedBox(height: 20.0),
            const Text(
              '''"The Social Network" es una película dramática dirigida por David Fincher y escrita por Aaron Sorkin. La película se estrenó en 2010 y se centra en la creación y el desarrollo de la red social Facebook. A continuación, te proporcionaré más información sobre esta película, incluyendo detalles sobre su trama, elenco y logros.

Trama:
La película narra la historia de Mark Zuckerberg, interpretado por Jesse Eisenberg, un estudiante de Harvard que, en 2004, crea lo que eventualmente se convertiría en Facebook. La trama se desarrolla en torno a la controversia y los litigios que surgieron a raíz del éxito de la plataforma, ya que Zuckerberg enfrentó demandas de sus antiguos amigos y asociados, los gemelos Winklevoss (interpretados por Armie Hammer) y Eduardo Saverin (interpretado por Andrew Garfield).

Reparto Principal:

Jesse Eisenberg como Mark Zuckerberg.
Andrew Garfield como Eduardo Saverin.
Justin Timberlake como Sean Parker.
Armie Hammer como los gemelos Winklevoss.
Rooney Mara como Erica Albright.
Premios y Reconocimientos:
"The Social Network" recibió una gran aclamación de la crítica y numerosos premios, incluyendo tres premios de la Academia. La película ganó el Óscar al Mejor Guión Adaptado (escrito por Aaron Sorkin), Mejor Banda Sonora Original (compuesta por Trent Reznor y Atticus Ross) y Mejor Montaje (Kirk Baxter y Angus Wall).

Impacto Cultural:
La película se convirtió en un fenómeno cultural y contribuyó a la leyenda de Mark Zuckerberg y la creación de Facebook. Además, "The Social Network" exploró temas relacionados con la ética en el mundo digital, la traición y la ambición, lo que la convierte en una película relevante para la era de las redes sociales.

En resumen, "The Social Network" es una película que ofrece una mirada apasionante a la creación de una de las redes sociales más influyentes del mundo y los desafíos legales y personales que enfrentaron sus fundadores. La dirección magistral de David Fincher y el guion inteligente de Aaron Sorkin la convierten en una obra cinematográfica digna de explorar.''',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center, // Alinea el texto al centro
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Acción a realizar cuando se presiona el botón "Siguiente"
              },
              child: const Text('Siguiente'),
            ),
          ],
        ),
      ),
    );
  }
}
