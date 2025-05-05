
import 'package:flutter/material.dart';

class grammer_34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4 #34.なくてはいけない'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          flexibleSpace: Stack(
            children: [
              Container(
                width: double.infinity,
              ),
            ],),),),
      body: Padding(
        padding: const EdgeInsets.all(16.0), //responsive padding
        child: Column(
          children: [
            //1st box
            Container(
              width: screenWidth * 0.9, // for responsive width
              padding: EdgeInsets.all(screenWidth * 0.03),
              margin: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02,
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: screenWidth * 0.04, height: 1.4), // for responsive font size
                  children: [
                    TextSpan(
                      text: 'なくてはいけない/なくてはならない（nakutewa ikenai/ nakutewa naranai）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-ない(－い) + なくてはいけない/なくてはならない', style: TextStyle(color: Colors.red )),
                    TextSpan(
                      text: '\nmust do, have to do',
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
                minHeight: screenHeight * 0.3, //responsive minHeight
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
                    TextSpan(text: '今度の試合は絶対に勝たなくてはいけない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkondo no shiai wa zettai ni katanakutewa ikenai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI must win this match at all costs.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '明日までにレポートを提出しなくてはならない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nashita made ni repooto wo teishutsu shinakutewa naranai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI must hand in the report by tomorrow.', style: TextStyle(color: Colors.black)),
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

