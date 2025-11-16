import 'package:flutter/material.dart';

class grammer_11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#11.べつに～ない'),
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
                      text: 'べつに～ない (betsu ni ~ nai)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: '別に + V-ない', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\n別に + N + ではない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\n別に + いAdj (－い) + くない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\n別に + なAdj + ではない', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nnot really, not particularly',
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
                    TextSpan(text: 'わたしは別に彼女が大嫌いなわけではありませんよ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nwatashi wa betsu ni kanojo ga daikirai na wake dewa arimasen yo.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nIt`s not that I really dislike her.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '彼は僕の失礼な言葉を別に気にする様子もない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkare wa boku no shitsurei na kotoba wo betsu ni ki ni suru yousu mo nai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nHe doesn`t look like he cares about my rude remarks.', style: TextStyle(color: Colors.black)),
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

