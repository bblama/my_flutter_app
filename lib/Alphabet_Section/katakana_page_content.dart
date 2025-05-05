import 'package:flutter/material.dart';

class KatakanaPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\nKatakana-->カタカナ',
              style: TextStyle(fontSize:16, fontWeight: FontWeight.bold,color: Colors.purple ),
            ),
            //SizedBox(height:2),
            Image.asset('assets/katakana.png',
              width: 600, height:390,
            ),
          ],
        )
    );
  }
}
