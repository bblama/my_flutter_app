import 'package:flutter/material.dart';

class HiraganaPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Content for Hiragan',
          style: TextStyle(fontSize:18),
          ),
          SizedBox(height: 20),
          Image.asset('assets/')
        ],
      )
    );
  }
}



