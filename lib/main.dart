import 'package:proyecto_flutter/artist_details_page.dart';
import 'package:proyecto_flutter/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Artist andy = Artist(
    firstName: '',
    lastName: '',
    avatar: 'assets/logo7.png',
    backdropPhoto: 'assets/fondo7.jpg',
    biography: 'Galeria de Videos ',
    videos: <Video>[
      Video(
        title: 'Chayanne - Humanos a Marte (Official Music Video)',
        thumbnail: 'assets/video1.jpg',
        url: 'https://www.youtube.com/watch?v=C8FQ4wQXyaE',
      ),
      Video(
        title: 'Nacho, Manuel Turizo - Déjalo',
        thumbnail: 'assets/video2.jpg',
        url: 'https://www.youtube.com/watch?v=05lfQfEc0Q8',
      ),
      Video(
        title: 'Romeo Santos - Yo También (Official Video) ft. Marc Anthony',
        thumbnail: 'assets/video3.jpg',
        url: 'https://www.youtube.com/watch?v=QBaIMZ8QjcU',
      ),
      Video(
        title: 'Jenny and the Mexicats - Me Voy a Ir (Tito Lara Session)',
        thumbnail: 'assets/video4.jpg',
        url: 'https://www.youtube.com/watch?v=KuM7jzv6io8',
      ),
      Video(
        title: 'DILE AL AMOR AVENTURA BACHATA (OFFICIAL HD)',
        thumbnail: 'assets/video5.jpg',
        url: 'https://www.youtube.com/watch?v=WivMb-s_UHI&list=RDpVE1ahwklf4&index=6',
      ),
    ],
    labelimages: "Nuestros anunciantes",
    imagenes: <Imagen>[
      Imagen(
        thumbnail: 'assets/coca.jpeg',
        url: 'http://www.cocacolalatinamerica.com/es/bo/home/',
      ),
      Imagen(
        thumbnail: 'assets/colgate.jpeg',
        url: 'https://www.colgate.com/es-bo/oral-health',
      ),
      Imagen(
        thumbnail: 'assets/pampers.jpeg',
        url: 'https://www.pampers.com.ar/',
      ),
      Imagen(
        thumbnail: 'assets/pantene.jpeg',
        url: 'https://www.pantene.com.co/es-co',
      ),
      Imagen(
        thumbnail: 'assets/fairplay.png',
        url: 'https://www.fairplay.com.bo/',
      ),
    ],

  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Radio On Line',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArtistDetailsPage(andy),
    );
  }
}
