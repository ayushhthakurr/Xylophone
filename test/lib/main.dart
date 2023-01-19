import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void sound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded playSound(int noteNumber , Color? color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sound(noteNumber);
        },
        child: Container(
          color: color,
        ),
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
              playSound(1,Colors.red),
              playSound(2,Colors.orange),
              playSound(3,Colors.yellow),
              playSound(4, Colors.green),
              playSound(5, Colors.blue),
              playSound(6, Colors.indigo),
              playSound(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
