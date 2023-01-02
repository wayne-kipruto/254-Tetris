// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const BLOCKS_X = 10;
const BLOCKS_Y = 20;

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: BLOCKS_X / BLOCKS_Y,
      child: Container(
        decoration: BoxDecoration(
        color:Colors.blueGrey,
        border: Border.all(
          width: 2.0,color: Colors.blueGrey.shade500,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        ),
    );
  }
}
