import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_radio/flutter_radio.dart';
// esto es parte de la radio
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String url = "http://server.bitstreaming.net:9016/stream";
  //String url = "https://ia802708.us.archive.org/3/items/count_monte_cristo_0711_librivox/count_of_monte_cristo_001_dumas.mp3";

  @override
  void initState() {
    super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: Column(
              children: <Widget>[
                new Container(

                  child: new ButtonTheme(
                    // minWidth: double.infinity,
                    child: MaterialButton(
                      onPressed: () => FlutterRadio.play(url: url),
                      child: Image.asset('assets/logo1.jpg'),
                    ),
                  ),
                )

                /*RaisedButton(
                  child: const Text('Connect with Twitter'),
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () => FlutterRadio.play(url: url),
                ),*/

              ],
            )
        ),
      ),
    );
  }


  /*Widget _buildRadio() {
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
  }*/
}




