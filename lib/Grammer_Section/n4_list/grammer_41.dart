
import 'package:flutter/material.dart';

class grammer_41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4#41.にみえる'),
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
                      text: 'にみえる (ni mieru)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-て + 見える', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj (－い) + く見える', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + に見える', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nto look, to seem, to appear',
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
                    TextSpan(text: '先生が老いて見えるが、実際は５０歳もないそうだ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nsensei ga oite mieru ga, jissai wa gojuu sai mo nai sou da.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThe teacher might look old, but he`s not even 50 yet.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '雨の日は、木のみどりが美しく見える。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\name no hi wa, ki no midori ga utsukushiku mieru.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThe trees look so beautifully green on rainy days.', style: TextStyle(color: Colors.black)),
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

