import 'package:flutter/material.dart';

class KatakanaPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Katakana-->カタカナ',
              style: TextStyle(fontSize:20, fontWeight: FontWeight.bold,color: Colors.purple ),
            ),
            SizedBox(height:2),
            Image.asset('assets/katakana.png',
              width: 600, height:500, fit: BoxFit.cover,
            ),
          ],
        )
    );
  }
}
