import 'package:meta/meta.dart';

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
  });

  final String firstName;
  final String lastName;
  final String avatar;
  final String backdropPhoto;
  final String biography;
  final List<Video> videos;
  final List<Imagen> imagenes;
  final String labelimages;
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
    @required this.thumbnail,
    @required this.url,
  });

  final String thumbnail;
  final String url;
}