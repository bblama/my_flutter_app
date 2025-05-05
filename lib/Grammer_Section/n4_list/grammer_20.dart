import 'package:flutter/material.dart';

class grammer_20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4 #20.じゃないか'),
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
                      text: 'じゃないか (janai ka)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'Phrase + じゃないか', style: TextStyle(color: Colors.red )),
                    TextSpan(
                      text: '\nright?, isn`t it?',
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
                    TextSpan(text: 'アニルさんの家は大学から遠いんじゃないか。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\naniru san no ie wa daigaku kara tooin janai ka.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nIsn`t Anil`s house far away from school?', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'だから言ったじゃないか！', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\ndakara itta janai ka.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI told you!', style: TextStyle(color: Colors.black)),
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
