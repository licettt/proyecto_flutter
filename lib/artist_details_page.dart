import 'dart:ui' as ui;
import 'package:blurry_artist_details_page/models.dart';
import 'package:blurry_artist_details_page/video_card.dart';
import 'package:blurry_artist_details_page/imagen_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio/flutter_radio.dart';
import 'package:blurry_artist_details_page/radio.dart';

class ArtistDetailsPage extends StatelessWidget {
  ArtistDetailsPage(this.artist);
  final Artist artist;
  String url = "http://server.bitstreaming.net:9016/stream";
  MyApp radioo = new MyApp();

  @override
  void initState() {
   // super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  Widget _buildContent() {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*FlatButton(
            child: Icon(Icons.play_circle_filled),
            onPressed: () => FlutterRadio.play(url: url),
          ),
          FlatButton(
            child: Icon(Icons.pause_circle_filled),
            onPressed: () => FlutterRadio.pause(),
          ),*/
          _buildLogo(),
          Container(
            //decoration: new BoxDecoration(color: Colors.red),
            width: 100.0,
            height: 100.0,
            /*decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.yellow),
            ),*/
            margin: const EdgeInsets.only(top: 25.0, left: 130.0),
            padding: const EdgeInsets.all(3.0),
            child: radioo,),
          _buildText(),
          _buildVideoList(),
          _buildTextImages(),
          _buildImageList(),

        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.yellow),
      ),
      margin: const EdgeInsets.only(top: 35.0, left: 130.0),
      padding: const EdgeInsets.all(3.0),
      child: ClipOval(
        child: Image.asset(artist.avatar),
      ),

    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            artist.firstName + '\n' + artist.lastName,
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),

          /*Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),*/
          Text(
            artist.biography,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextImages() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            artist.labelimages,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildVideoList() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(245.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: artist.videos.length,
          itemBuilder: (BuildContext context, int index) {
            var video = artist.videos[index];
            return VideoCard(video);
          },
        ),
      ),
    );
  }

  Widget _buildImageList() {
    return Padding(

      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(200.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          itemCount: artist.imagenes.length,
          itemBuilder: (BuildContext context, int index) {
            var imagen = artist.imagenes[index];
            return ImagenCard(imagen);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(artist.backdropPhoto, fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: _buildContent(),
            ),
          ),
        ],

      ),
    );
  }
}
