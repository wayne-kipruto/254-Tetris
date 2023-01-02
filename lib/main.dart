// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris_flutter/game.dart';
import 'next_block.dart';
import 'package:tetris_flutter/score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TetrisGame(),
    );
  }
}

class TetrisGame extends StatefulWidget {
  const TetrisGame({super.key});

  @override
  State<TetrisGame> createState() => _TetrisGameState();
}

class _TetrisGameState extends State<TetrisGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('TETRIS'),
          centerTitle: true,
          backgroundColor: Colors.black),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Score(),
            Expanded(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Game()),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                        child: Column(
                          children: <Widget>[
                            NextBlock(),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Start',
                                  style: GoogleFonts.rubik(
                                      fontSize: 10, color: Colors.grey[200]),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
