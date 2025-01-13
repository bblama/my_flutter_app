import 'package:flutter/material.dart';

class JLPT_N1_kanji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(200.0),
          child: AppBar(backgroundColor: Colors.purple,flexibleSpace: Stack(children: [Container(
            width: double.infinity,
            child: Image.asset('assets/n1_kanji.jpg',fit: BoxFit.fitHeight, color: Colors.purple,
            colorBlendMode: BlendMode.darken,
            ),
          )],),)),
      body: Center(
        child: Text('Content for JLPT N1 Kanji'),
      ),
    );
  }
}
