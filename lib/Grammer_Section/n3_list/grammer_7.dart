import 'package:flutter/material.dart';

class grammer_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#7.ばかりに'),
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
                      text: 'ばかりに (bakari ni)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual, past + ばかりに', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj + ばかりに', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + な/である + ばかりに', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + ばかりに', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nbecause, on account of negative result',
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
                    TextSpan(text: '仕事の経験が少ないばかりに、就職口がなかなか見つからない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nshigoto no keiken ga sukunai bakari ni, shuushokuguchi ga mitsukaranai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI can`t find a job opportunity because of my lack of experience.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'お金がないばかりに、今度の旅行には行けなかったのです。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nokane ga nai bakari ni, kondo no ryokou niwa ikenakatta no desu.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI can`t travel this time because I have no money.', style: TextStyle(color: Colors.black)),
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

