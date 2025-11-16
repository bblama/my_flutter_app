import 'package:flutter/material.dart';

class grammer_50 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#50.もしかしたら'),
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
                      text: 'もしかしたら (moshikashitara)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'もしかしたら + V-casual + かもしれない', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nもしかしたら + N + かもしれない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nもしかしたら + いAdj + かもしれない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nもしかしたら + なAdj + かもしれない', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nperhaps, maybe, perchance, by any chance',
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
                    TextSpan(text: 'もしかしたらあそこに座っている人は有名人かもしれない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nmoshikashitara asoko ni suwatteiru hito wa yuumeijin kamoshirenai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThat person sitting there could be a celebrity.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'もしかしたら今日彼女に会えるかもしれない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nmoshikashitara kyou kanojo ni aeru kamoshirenai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI might be able to meet her today.', style: TextStyle(color: Colors.black)),
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

