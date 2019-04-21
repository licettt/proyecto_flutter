import 'package:meta/meta.dart';
import 'package:blurry_artist_details_page/radio.dart';

class Artist {
  Artist({
    @required this.firstName,
    @required this.lastName,
    @required this.avatar,
    @required this.backdropPhoto,
    @required this.biography,
    @required this.videos,
    @required this.labelimages,
    @required this.imagenes,
    //@required this.radio
  });

  final String firstName;
  final String lastName;
  final String avatar;
  final String backdropPhoto;
  final String biography;
  final List<Video> videos;
  final List<Imagen> imagenes;
  final String labelimages;
  //final MyApp radio;
}

class Video {
  Video({
    @required this.title,
    @required this.thumbnail,
    @required this.url,
  });

  final String title;
  final String thumbnail;
  final String url;
}

class Imagen {
  Imagen({
    //@required this.title,
    @required this.thumbnail,
    @required this.url,
  });

  //final String title;
  final String thumbnail;
  final String url;
}