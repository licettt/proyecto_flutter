import 'package:blurry_artist_details_page/artist_details_page.dart';
import 'package:blurry_artist_details_page/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Artist andy = Artist(
    firstName: 'Tu Radio',
    lastName: 'Favorita',
    avatar: 'assets/logo1.jpg',
    backdropPhoto: 'assets/fondo2.jpg',
    location: 'London, England',
    biography: 'Andrew McLan "Andy" Fraser was an English songwriter and bass '
        'guitarist whose career lasted over forty years, and includes two spells '
        'as a member of the rock band Free, which he helped found in 1968, aged 15.',
    videos: <Video>[
      Video(
        title: 'Free - Mr. Big - Live at Granada Studios 1970',
        thumbnail: 'assets/video1_thumb.png',
        url: 'https://www.youtube.com/watch?v=_FhCilozomo',
      ),
      Video(
        title: 'Free - Ride on a Pony - Live at Granada Studios 1970',
        thumbnail: 'assets/video2_thumb.png',
        url: 'https://www.youtube.com/watch?v=EDHNZuAnBoU',
      ),
      Video(
        title: 'Free - Songs of Yesterday - Live at Granada Studios 1970',
        thumbnail: 'assets/video3_thumb.png',
        url: 'https://www.youtube.com/watch?v=eI1FT0a_bos',
      ),
      Video(
        title: 'Free - I\'ll Be Creepin\' - Live at Granada Studios 1970',
        thumbnail: 'assets/video4_thumb.png',
        url: 'https://www.youtube.com/watch?v=3qK8O3UoqN8',
      ),
    ],
    imagenes: <Imagen>[
      Imagen(
        title: 'Free - Mr. Big - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=_FhCilozomo',
      ),
      Imagen(
        title: 'Free - Ride on a Pony - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=EDHNZuAnBoU',
      ),
      Imagen(
        title: 'Free - Songs of Yesterday - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=eI1FT0a_bos',
      ),
      Imagen(
        title: 'Free - I\'ll Be Creepin\' - Live at Granada Studios 1970',
        thumbnail: 'assets/backdrop.png',
        url: 'https://www.youtube.com/watch?v=3qK8O3UoqN8',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArtistDetailsPage(andy),
    );
  }
}
