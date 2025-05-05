import 'package:flutter/material.dart';

class grammer_96 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N4#96.ようだ'),
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
                      text: 'ようだ（you da）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual + ようだ', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj + ようだ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + なようだ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + のようだ', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nit seems that, it appears that, it looks like',
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
                    TextSpan(text: 'このホテルはサービスがよいので、お客は満足しているようだ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkono hoteru wa saabisu ga yoi node, okyaku wa manzoku shiteiru you da.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nkono hoteru wa saabisu ga yoi node, okyaku wa manzoku shiteiru you da.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '話し方からすると、彼は、東京の人ではないようだ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nhanashikata kara suruto, kare wa toukyou no hito dewanai you da.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nFrom the way he talks, I`d say he`s not from Tokyo.', style: TextStyle(color: Colors.black)),
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

