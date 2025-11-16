import 'package:flutter/material.dart';

class grammer_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65.0),
        child: AppBar(title: Text('N3#2.ば～ほど'),
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
                      text: 'ば～ほど (ba ~ hodo)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'V-ばconditional + (same) V + ほど', style: TextStyle(color: Colors.red )),
                    TextSpan(text: '\nいAdj-ばconditional + (same) いAdj + ほど', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nなAdj + ならば + なAdj + なほど', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '\nN + であれば + N + あるほど', style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: '\nthe more… the more',
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
                    TextSpan(text: 'この本は読めば読むほど面白くなる。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\nkono hon wa yomeba yomu hodo omoshiroku naru.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThe more I read this book, the more interesting it gets.', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '\n\n#2\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(text: '甘いものを食べれば食べるほど太っていく。', style: TextStyle(color: Colors.black )),
                    TextSpan(text: '\namai mono wo tabereba taberu hodo futotte iku.', style: TextStyle(color: Colors.blue )),
                    TextSpan(text: '\nThe more sweet stuff I eat the fatter I become.', style: TextStyle(color: Colors.black)),
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

