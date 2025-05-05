import 'package:flutter/material.dart';

class grammer_66 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(58.0),
        child: AppBar(title: Text('N4#66.たり〜たり'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          flexibleSpace: Stack(
            children: [
              Container(
                width: double.infinity,
              ),
            ],),),),
      body: Padding(
        padding: const EdgeInsets.all(15.0), //responsive padding
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
                      text: 'たり〜たり（tari~tari）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual, past + り ~ V-casual, past + り + する', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN + だったり ~ N + だったり', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj(－い) + かったり ~ いAdj(－い) + かったり', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + だったり ~ なAdj + だったり', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\ndo such things like',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            //2nd box
            Container(
              width: screenWidth * 0.93,
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
                    TextSpan(text: '冬休みは本を読んだり、運動したりするつもりです。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nfuyuyasumi wa hon wo yondari, undou shitari suru tsumori desu.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI plan to read books and exercise during the winter vacation.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '昨日みんなの前で歌ったり踊ったりしました。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkinou minna no mae de utattari odottari shimashita.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI sang and danced in front of everyone yesterday.', style: TextStyle(color: Colors.black)),
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

