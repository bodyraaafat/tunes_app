import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tunes_app/widgets/customcontainer.dart';

import '../models/tunemodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: "sounds/note1.wav"),
    TuneModel(color: Colors.orange, sound: "sounds/note2.wav"),
    TuneModel(color: Colors.yellow, sound: "sounds/note3.wav"),
    TuneModel(color: Colors.green, sound: "sounds/note4.wav"),
    TuneModel(color: Colors.grey, sound: "sounds/note5.wav"),
    TuneModel(color: Colors.blue, sound: "sounds/note6.wav"),
    TuneModel(color: Colors.purple, sound: "sounds/note7.wav")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Tunes App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: tunes.map((e) => CustomItems(tune: e)).toList(),
      ),
    );
  }
}
