import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    //await player.setSource(AssetSource('assets/note$noteNumber.wav'));
    await player.play(AssetSource(('note$noteNumber.wav')));
  }

  Expanded getNote(int noteNumber, Color color) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        playSound(noteNumber);
      },
      child: Container(color: color),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            getNote(1, Colors.red),
            getNote(2, Colors.orange),
            getNote(3, Colors.yellow),
            getNote(4, Colors.green),
            getNote(5, Colors.teal),
            getNote(6, Colors.blue),
            getNote(7, Colors.purple),
          ],
        ),
      )),
    );
  }
}
