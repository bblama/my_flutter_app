import 'package:flutter/material.dart';

class HiraganaPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              '\nHiragan-->ひらがな',
          style: TextStyle(fontSize:16, fontWeight: FontWeight.bold,color: Colors.purple ),
          ),
          Image.asset('assets/hiragana.png',
          width: 600, height:390, fit: BoxFit.fitHeight,
          ),
        ],
      )
    );
  }
}



