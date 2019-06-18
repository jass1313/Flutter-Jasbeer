import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int j) {
    final player = AudioCache();
    player.play('note$j.wav');
  }

  Expanded buildKey({Color color, int j}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(j);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, j: 1),
              buildKey(color: Colors.blue, j: 2),
              buildKey(color: Colors.blueGrey, j: 3),
              buildKey(color: Colors.yellow, j: 4),
              buildKey(color: Colors.purple, j: 5),
              buildKey(color: Colors.green, j: 6),
              buildKey(color: Colors.pink, j: 7),
            ],
          ),
        ),
      ),
    );
  }
}
