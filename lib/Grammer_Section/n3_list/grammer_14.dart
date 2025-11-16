import 'package:flutter/material.dart';

class grammer_14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#14.どんなに～ても'),
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
                      text: 'どんなに～ても (donna ni ~ temo)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'どんなに + V-て + も', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nどんなに + N + でも', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nどんなに + いAdj + (－い)くても', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nどんなに + なAdj + でも', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nno matter how',
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
                    TextSpan(text: 'どんなに頑張っても、５０点しかとれなかった。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\ndonna ni ganbattemo, gojuu ten shika torenakatta.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nNo matter how hard I tried, I never got more than 50 points.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'どんなに一生懸命働いても、生活は楽にならないだろうと思う。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\ndonna ni isshoukenmei hataraitemo, seikatsu wa raku ni naranai darou to omou.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nNo matter how hard I work, I don`t think my life will get any easier.', style: TextStyle(color: Colors.black)),
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

