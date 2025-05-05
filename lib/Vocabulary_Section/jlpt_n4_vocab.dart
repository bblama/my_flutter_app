import 'package:flutter/material.dart';

class JLPT_N4_vocab extends StatelessWidget {
  final List<String> imageList = [
    'assets/hiragana.png',
    'assets/katakana.png',
    'assets/learn.png', // Add the rest of your image file paths here // Repeat the above pattern to reach 34 items
   ];

  @override
  Widget build(BuildContext context)
  { return Scaffold(
    appBar: PreferredSize(preferredSize: Size.fromHeight(200.0),
      child: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/n5_kanji.jpg',
                fit: BoxFit.fitHeight,
                color: Colors.purple,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ],
        ),
      ),
    ),
    body: SingleChildScrollView( child: Column( children: imageList.map((path) { return Image.asset( path, fit: BoxFit.cover, ); }).toList(), ), ), ); } }