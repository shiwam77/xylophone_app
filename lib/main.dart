import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    // call this method when desired
    player.play('explosion.mp3');
    if (i == 1) {
      player.play('note1.wav');
      return;
    }
    if (i == 2) {
      player.play('note2.wav');
      return;
    }
    if (i == 3) {
      player.play('note3.wav');
      return;
    }
    if (i == 4) {
      player.play('note4.wav');
      return;
    }
    if (i == 5) {
      player.play('note5.wav');
      return;
    }
    if (i == 6) {
      player.play('note6.wav');
      return;
    }
    if (i == 7) {
      player.play('note7.wav');
      return;
    }
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
