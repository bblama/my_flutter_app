import 'package:flutter/material.dart';

class grammer_48 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#48.もの'),
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
                      text: 'もの (mono)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + (んだ)もの/もん', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN + なんだもの/もん', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj + (んだ)もの/もん', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + なんだもの/もん', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nbecause; indicates reason or excuse; indicates dissatisfaction',
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
                    TextSpan(text: '今日の試験、できなかった。勉強しなかったんだもん、仕方がない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkyou no shiken, dekinakatta. benkyou shinakatta da mon, shikaga ga nai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI didn`t do well on the test today. I can`t complain because I didn`t study much.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '「これ、男のものだぜ。」「だって、気に入ったんだもん。」', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkore, otoko no mono da ze. datte, ki ni ittan da mon.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\n`This is for men.` `But I like it.`', style: TextStyle(color: Colors.black)),
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

