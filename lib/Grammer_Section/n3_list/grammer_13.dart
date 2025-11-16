import 'package:flutter/material.dart';

class grammer_13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#13.どころか'),
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
                      text: 'どころか (dokoro ka)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-dictionary + どころか', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj + どころか', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + などころか', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + どころか', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nfar from, anything but, let alone, much less',
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
                    TextSpan(text: '私は彼に役に立つどころか、迷惑もかけた。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nwatashi wa kare ni yaku ni tatsu dokoro ka, meiwaku mo kaketa.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI not only didn`t help him, I also caused him trouble.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '忙しくて、休みをとるどころか、食事をする時間もない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nisogashikute, yasumi o toru dokoro ka, shokuji o suru jikan mo nai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI`m so busy that I don`t even have time to eat, let alone taking a day off.', style: TextStyle(color: Colors.black)),
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

