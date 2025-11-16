import 'package:flutter/material.dart';

class grammer_29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#29.決して～ない'),
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
                      text: '決して～ない (kesshite ~ nai)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: '決して+ N + でない', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\n決して+ V-ない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\n決して+ いAdj (-い) + くない', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\n決して+ なAdj + でない', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nnever; by no means, not in the least, \nin no way',
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
                    TextSpan(text: 'いろいろお世話になりました。親切にしていただいたことは決して忘れません。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\niroiro osewa ni narimashita. shinsetsu ni shite itadaita koto wa kesshite wasuremasen.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThank you for everything. I`ll never forget your kindness.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: 'お父さんは君を決して許さないよ。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\notousan wa kimi wo kesshite yurusanai yo.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nDad will never forgive you.', style: TextStyle(color: Colors.black)),
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

