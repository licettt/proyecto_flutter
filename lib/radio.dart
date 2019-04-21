import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui' as ui;
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

        backgroundColor: const Color(0x00000000).withOpacity(0.0),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.0),
                  child: Column(
                    children: <Widget>[
                      new Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple[900]),
                        ),
                        child: new ButtonTheme(
                          // minWidth: double.infinity,
                          child: MaterialButton(
                            //child: Image.asset('assets/logo1.jpg'),
                            child: Icon(Icons.play_circle_filled, color: Colors.purple[900],),

                            onPressed: () => FlutterRadio.play(url: url),

                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),
          ],

        ),

      ),
    );
  }
}




