import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart' show AssetSource, AudioPlayer;

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void sound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded playSound(Color color , int soundNumber) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
        ),
        onPressed: () {
          sound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              playSound(Colors.red,1),
              playSound(Colors.orange,2),
              playSound(Colors.yellow,3),
              playSound( Colors.green,4),
              playSound(Colors.blue,5),
              playSound(Colors.indigo,6),
              playSound(Colors.pink,7),
            ],
          ),
        ),
      ),
    );
  }
}
