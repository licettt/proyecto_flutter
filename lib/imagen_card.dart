import 'package:proyecto_flutter/models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImagenCard extends StatelessWidget {
  ImagenCard(this.imagen);
  final Imagen imagen;

  BoxDecoration _buildShadowAndRoundedCorners() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          spreadRadius: 1.0,
          blurRadius: 0.0,
          color: Colors.purple[900],
        ),
      ],
    );
  }

  Widget _buildThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(imagen.thumbnail),
          Positioned(
            bottom: 50.0,
            right: 12.0,
            child: _buildPlayButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return Material(
      color: Colors.black,
      type: MaterialType.circle,
      child: InkWell(
        onTap: () async {
          if (await canLaunch(imagen.url)) {
            await launch(imagen.url);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.http,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 4.0, right: 4.0),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 3, child: _buildThumbnail()),
          //Flexible(flex: 2, child: _buildInfo()),
        ],
      ),
    );
  }
}
