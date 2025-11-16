import 'package:flutter/material.dart';

class grammer_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#1.あまり'),
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
                      text: 'あまり (amari)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'N + のあまり', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nV-dictionary + あまり', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nV-casual, past + あまり', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj-さ + のあまり', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + あまり', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\ntoo much',
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
                    TextSpan(text: '試験に合格したうれしさのあまり、電話で叫んだ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nshiken ni goukaku shita ureshisa no amari, denwa de sakenda.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI was so happy when I passed the test that I screamed on the phone.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'うれしさのあまり、彼は涙を流しました。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nureshisa no amari, kare wa namida wo nagashimashita.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nHe was so happy that he cried.', style: TextStyle(color: Colors.black)),
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

