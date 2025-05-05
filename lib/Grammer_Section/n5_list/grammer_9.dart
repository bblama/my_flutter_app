import 'package:flutter/material.dart';

class grammer_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #9.いちばん'),
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
              padding: EdgeInsets.all(screenWidth * 0.03),
              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
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
                      text: 'いちばん（ichiban）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'N + は/が一番 + Adj + だ', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nV-dictionary + のは/のが一番 + Adj + だ', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nthe most, the best',
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
                    TextSpan(text: '一番好きな映画はなんですか？', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nichiban suki na eiga ha nan desuka?', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nWhat`s your favorite movie', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '一番好きな漫画って何？', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nichiban suki na manga tte nani', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nWhat`s your favorite manga?', style: TextStyle(color: Colors.black)),
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
