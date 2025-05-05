import 'package:flutter/material.dart';

class grammer_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #4.でしょう'),
            backgroundColor: Colors.blue,
            centerTitle: true,
            flexibleSpace: Stack(
              children: [
                Container(
                  width: double.infinity,
                ),
              ],),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //1st box
            Container(
              width: screenWidth * 0.9,
              padding: EdgeInsets.all(screenWidth * 0.03),
              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: screenWidth * 0.04, height: 1.4),
                  children: [
                    TextSpan(
                      text: 'でしょう（deshou）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'N + でしょう', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nV + でしょう', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nAdj+ + でしょう', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nI think, probably',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            //2nd box
            Container(
              width: screenWidth * 0.9,
              padding: EdgeInsets.all(screenWidth * 0.05),
              // margin: EdgeInsets.only(bottom: 16),
              constraints: BoxConstraints(
                minHeight: screenHeight * 0.3,
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: screenWidth * 0.04, height: 1.4),
                  children: [
                    TextSpan(
                      text: '#1\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'あなたならうまく乗り切りでしょう', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nanata nara umaku norikiri desyou', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\ni know you will be able to get through it.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '明日は雨が降るでしょう', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nasita ha ame ga furu desyou', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nit will be probably rain tomorrow', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
