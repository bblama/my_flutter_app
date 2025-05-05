import 'package:flutter/material.dart';

class grammer_61 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4#61.そうだ'),
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
                      text: 'そうだ（sou da）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + そうだ', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN + だそうだ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj + そうだ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + だそうだ', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nit looks to me, people say that, it is said that, I hear that',
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
                    TextSpan(text: '天気予報によると、明日は大雪だそうです。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\ntenki yohou ni yoru to, ashita wa ooyuki da sou desu.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nAccording to the weather forecast, there will be heavy snow tomorrow.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '田中君の話によると、山田さんはもう日本へ帰ったそうです。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\ntanaka kun no hanashi ni yoru to, yamada san wa mou nihon e kaetta sou desu.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nAccording to Tanaka, Yamada already returned to Japan.', style: TextStyle(color: Colors.black)),
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

