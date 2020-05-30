import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');//Here's the changes i made
  }

  Expanded buildExpand(Color color, int i) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpand(Colors.white, 1),
              buildExpand(Colors.green, 2),
              buildExpand(Colors.blueGrey, 3),
              buildExpand(Colors.redAccent, 4),
              buildExpand(Colors.indigo, 5),
              buildExpand(Colors.brown, 6),
              buildExpand(Colors.lightBlue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
