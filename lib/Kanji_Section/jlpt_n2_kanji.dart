import 'package:flutter/material.dart';

class JLPT_N2_kanji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(200),
          child: AppBar(backgroundColor: Colors.purple,flexibleSpace: Stack(children: [Container(
            width: double.infinity,
            child: Image.asset('assets/n1_n5_jlpt.webp',fit: BoxFit.fitHeight,color: Colors.purple,
            colorBlendMode: BlendMode.darken,
            ),
          )],),)),
      body: Center(
        child: Text('Content for JLPT N2 Kanji'),
      ),
    );
  }
}
