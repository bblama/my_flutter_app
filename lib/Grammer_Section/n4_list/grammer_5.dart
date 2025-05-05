import 'package:flutter/material.dart';

class grammer_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4 #5.だけで'),
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
                      text: 'だけで (dake de)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + だけで', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nN + だけで', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\njust by; just by doing',
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
                    TextSpan(text: '二人だけで少し話がしたい。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nutari dake de sukoshi hanashi ga shitai.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nI want to talk a little, just the two of us.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '彼が父親の名前だけでぎくりとした。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkare ga chichioya no namae dake de gikuri to shita.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nHe winced at the sound of his father`s name.', style: TextStyle(color: Colors.black)),
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
