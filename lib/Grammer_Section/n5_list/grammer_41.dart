import 'package:flutter/material.dart';

class grammer_41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #41.より〜のほうが'),
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
                      text: 'より〜のほうが〜（yori~nohouga~）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'N1 より N2 のほうが Adj', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nV-phrase1 より V-phrase2 のほうが Adj', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nい-Adj1 より い-Adj2 のほうが Adj', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nな-Adj1 より な-Adj2 のほうが Adj', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nmore than', style: TextStyle(color: Colors.red)),

                    TextSpan(
                      text: '\nNote: You use より〜のほうが〜 in Japanese to make comparisons.',
                      style: TextStyle( color: Colors.black),
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
                    TextSpan(text: '英語より日本語のほうが難しいと思う', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\neigo yori nihongo nohouga muzukashii to omou', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI think Japanese is more difficult than English', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '彼女よりあなたのほうがきれいですよ', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkanojo yori anata nohouga kirei desu yo', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nYou`re more beautiful than her', style: TextStyle(color: Colors.black)),
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
