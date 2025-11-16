import 'package:flutter/material.dart';

class grammer_24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#24.一方で'),
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
                      text: '一方で (ippou de)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-dictionary + 一方(で)', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN + である一方(で)', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nいAdj + 一方(で)', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + である一方(で)', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\non one hand, on the other hand',
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
                    TextSpan(text: 'わたしの仕事は夏は非常に忙しい一方、冬は暇になる。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nwatashi no shigoto wa natsu wa hijou ni isogashii ippou, fuyu wa hima ni naru.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nMy job is very busy in the summer but I have more free time in the winter.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'いい親は厳しく叱る一方で、ほめることも忘れない。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nii oya wa kibishiku shikaru ippou de, homeru koto mo wasurenai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nA good parent knows how to scold the child strictly but also doesn`t forget to praise him.', style: TextStyle(color: Colors.black)),
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

