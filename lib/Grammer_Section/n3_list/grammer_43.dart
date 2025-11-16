import 'package:flutter/material.dart';

class grammer_43 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#43.くらい'),
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
                      text: 'くらい (kurai)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + くらい', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj + くらい', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + なくらい', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + くらい', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nto the extent that, so… that',
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
                    TextSpan(text: '子供じゃないんだから、自分のことぐらい自分で決めなさい。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkodomo janain dakara, jibun no koto gurai jibun de kimenasai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nYou`re not a kid anymore. Decide things by yourself.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '今日は朝から仕事が忙しくて、食事をする時間もないくらいだ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkyou wa asa kara shigoto ga isogashikute, shokuji wo suru jikan mo nai kurai da.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI`ve been so busy with my job since this morning that I don`t even have time to eat.', style: TextStyle(color: Colors.black)),
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

