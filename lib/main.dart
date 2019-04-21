import 'package:blurry_artist_details_page/artist_details_page.dart';
import 'package:blurry_artist_details_page/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blurry_artist_details_page/radio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Artist andy = Artist(
    firstName: 'Tu Radio',
    lastName: 'Favorita',
    avatar: 'assets/logo1.jpg',
    backdropPhoto: 'assets/fondo2.jpg',
    location: 'London, England',
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
    ],
    imagenes: <Imagen>[
      Imagen(
        //title: 'Toby ',
        thumbnail: 'assets/imagen1.jpg',
        url: 'http://www.hamburguesastoby.com',
      ),
      Imagen(
        //title: 'Free - Ride on a Pony - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=EDHNZuAnBoU',
      ),
      Imagen(
        //title: 'Free - Songs of Yesterday - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=eI1FT0a_bos',
      ),
      Imagen(
        //title: 'Free - I\'ll Be Creepin\' - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=3qK8O3UoqN8',
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
