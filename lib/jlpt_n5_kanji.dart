import 'package:flutter/material.dart';

class JLPT_N5_kanji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(200.0),
          child:AppBar(backgroundColor: Colors.purple,flexibleSpace: Stack(children: [Container(
            width: double.infinity,
            child: Image.asset('assets/n5_kanji.jpg',fit: BoxFit.fitHeight,color: Colors.purple,
            colorBlendMode: BlendMode.darken,
            ),
          ),

          ],),),
          ),
      body: Center(
        child: Text('Content for JLPT N5 Kanji'),
      ),
    );
  }
}
