import 'package:flutter/material.dart';

class grammer_22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#22.いくら～ても'),
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
                      text: 'いくら～ても (ikura ~ temo)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'いくら + V-て + も', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいくら + N + でも', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいくら + いAdj (-い) + くても', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいくら + なAdj + でも', style: TextStyle(color: Colors.red)),
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
                    TextSpan(text: 'いくら好きでもコーラーをたくさん飲むと、身体に悪いですよ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nikura sukidemo kooraa wo takusan nomu to shintai ni warui desu yo.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nNo matter how much you love Cocacola, it`s not good for your health if you drink too much.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'いくら調べてもわからなかったので、先生に聞いた。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nikura shirabetemo wakaranakatta node, sensei ni kiita.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI could not understand no matter how much I studied so I asked my teacher.', style: TextStyle(color: Colors.black)),
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

