import 'package:flutter/material.dart';

class grammer_1 extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  // Get screen dimensions
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #1.だけ'),
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
                      text: 'だけ（dake）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'なAdj+na +だけ', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN +だけ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nV-casual + だけ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj+na +だけ', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nonly, just',
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
                    TextSpan(text: 'コーラを飲めません。ジンジャーエールだけ飲みます。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkora ga nomemasen.zinzer drinks dake nomimasu', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\ni can not drink cocacola. i only drink zinzer drink', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '先生に言われた通りにしただけです。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nsensei ni iwareta toori ni sita dake desu.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI only did just as the teacher told me', style: TextStyle(color: Colors.black)),
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
