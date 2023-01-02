// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextBlock extends StatefulWidget {
  const NextBlock({super.key});

  @override
  State<NextBlock> createState() => _NextBlockState();
}

class _NextBlockState extends State<NextBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: double.infinity,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Next',
            style: GoogleFonts.rubik(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
