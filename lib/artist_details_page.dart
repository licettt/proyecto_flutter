import 'dart:ui' as ui;

import 'package:blurry_artist_details_page/models.dart';
import 'package:blurry_artist_details_page/video_card.dart';
import 'package:blurry_artist_details_page/imagen_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio/flutter_radio.dart';

class ArtistDetailsPage extends StatelessWidget {
  ArtistDetailsPage(this.artist);
  final Artist artist;

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
          _buildVideoScroller(),
          _buildImageScroller(),

        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 85.0,
      height: 85.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white30),
      ),
      margin: const EdgeInsets.only(top: 40.0, left: 130.0),
      padding: const EdgeInsets.all(3.0),
      child: ClipOval(
        child: Image.asset(artist.avatar),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            artist.firstName + '\n' + artist.lastName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text(
            artist.location,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),
          Text(
            artist.biography,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoScroller() {
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

  Widget _buildImageScroller() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(245.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: artist.imagenes.length,
          itemBuilder: (BuildContext context, int index) {
            var imagen = artist.imagenes[index];
            return ImagenCard(imagen);
          },
        ),
      ),
    );
  }

  //radiooooo

  Widget _buildRadio() {
    String url = "http://server.bitstreaming.net:9016/stream";
    return new MaterialApp(
      home: new Scaffold(

        body: new Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.play_circle_filled),
                  onPressed: () => FlutterRadio.play(url: url),
                ),
                FlatButton(
                  child: Icon(Icons.pause_circle_filled),
                  onPressed: () => FlutterRadio.pause(),
                )
              ],
            )
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
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }
}
