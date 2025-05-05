import 'package:flutter/material.dart';

class grammer_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #2.だらう'),
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
              padding: EdgeInsets.all(screenWidth * 0.05),
              margin: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
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
                      text: 'だろう（darou）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + だろう', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + だろう', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + だろう', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj + だろう', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nprobably',
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
                    TextSpan(text: 'ずっと動画を見て目が痛いだろう', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nzutto douga wo mite me ga itai darou', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nYour eyes will hurt from watching the video all the time.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '彼は３年も日本に住んでいるので日本語は上手だろう', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkare wa 3nen mo nihon ni sundeirunode nihongo ha jyouzu darou', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nhe has been living in japan for 3years, so he is probably good at japanese', style: TextStyle(color: Colors.black)),
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
