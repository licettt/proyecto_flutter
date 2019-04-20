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
}




