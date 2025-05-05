import 'package:flutter/material.dart';

class grammer_75 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N4 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4#75.てみる'),
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
                      text: 'てみる (te miru)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-て＋みる', style: TextStyle(color: Colors.red )),
                    TextSpan(
                      text: '\ntry to (to try to do something)',
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
                    TextSpan(text: 'このサラダがすごくおいしいよ。食べてみて。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkono sarada ga sugoku oishii yo. tabate mite.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThis salad is really good. Give it a try.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '私は彼と話してみます。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nwatashi ca kare to hanashite', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI`ll try to talk to him.', style: TextStyle(color: Colors.black)),
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

