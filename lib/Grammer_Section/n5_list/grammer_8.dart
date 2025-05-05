import 'package:flutter/material.dart';

class grammer_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('N5 #1.だけ')),
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
          child: AppBar(title: Text('N5 #8.ほうがいい'),
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
                      text: 'ほうがいい（hou ga ii）\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-casual past + ほうがいい', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nV-casual nonpast + ほうがいい', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nVない + ほうがいい', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nhad better, should, it`d be better to\nit`d be better to not do something',
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
                    TextSpan(text: '日本語をもっと練習したほうがいい', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nnihongo wo motto rensyu sita hou ga ii.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\ni can not drink alcohol. i only drink soft drink', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '仕事を早く進めたほうがいい', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nsigoto wo hayaku susumeta hou ga ii.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nYou`d better to work fast', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#3\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                      TextSpan(text: '約束を忘れないほうがいい。', style: TextStyle(color: Colors.black )),
                      TextSpan(text: '\nyakusoku wo wasure nai hou ga ii.', style: TextStyle(color: Colors.blue )),
                      TextSpan(text: '\nYou`d better not forget your promise.', style: TextStyle(color: Colors.black)),
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
