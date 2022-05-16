import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Text('Ring $soundNumber'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
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
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.orange),
              buildKey(soundNumber: 2, color: Colors.green),
              buildKey(soundNumber: 3, color: Colors.blue),
              buildKey(soundNumber: 4, color: Colors.red),
              buildKey(soundNumber: 5, color: Colors.yellow),
              buildKey(soundNumber: 6, color: Colors.teal),
              buildKey(soundNumber: 7, color: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
