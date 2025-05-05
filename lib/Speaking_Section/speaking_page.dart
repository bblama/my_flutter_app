import 'package:flutter/material.dart';
import 'jlpt_n1_speaking.dart';
import 'jlpt_n2_speaking.dart';
import 'jlpt_n3_speaking.dart';
import 'jlpt_n4_speaking.dart';
import 'jlpt_n5_speaking.dart';

class SpeakingPage extends StatelessWidget {
  final List<Map<String, dynamic>> speakingTopics = [
    {
      'title': 'JLPT N5 Level',
      'page': JLPT_N5_speaking(),
      'icon': 'assets/n5.jpg',
    },
    {
      'title': 'JLPT N4 Level',
      'page': JLPT_N4_speaking(),
      'icon': 'assets/n4.jpg',
    },
    {
      'title': 'JLPT N3 Level',
      'page': JLPT_N3_speaking(),
      'icon': 'assets/n3.jpg',
    },
    {
      'title': 'JLPT N2 Level',
      'page': JLPT_N2_speaking(),
      'icon': 'assets/n2.jpg',
    },
    {
      'title': 'JLPT N1 Level',
      'page': JLPT_N1_speaking(),
      'icon': 'assets/n1.jpg',
    }
  ];

  final List<Color> colors =[
    //Colors.redAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.orangeAccent,
    //Colors.pinkAccent,
    Colors.tealAccent,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.cyanAccent,
    Colors.limeAccent,
  ];

  /* final List<IconData> icons =[
    Icons.star,
    Icons.nature,
    Icons.book,
    Icons.language,
    Icons.school,
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(190.0),
          child: AppBar(backgroundColor: Colors.purple, flexibleSpace:
          Stack(children: [Container(
            width: double.infinity,
            child: Image.asset('assets/jlpt_vocabulary.jpg',fit: BoxFit.cover,
              color: Colors.purple.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
            /*Align(alignment:Alignment.bottomLeft,
            child: Padding(padding: const EdgeInsets.only(left: 10.0, bottom: 0.0),
            child: Text('JLPT Kanji Level',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,backgroundColor: Colors.purple),),
            ),
            ),*/
          ],),)),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: speakingTopics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => speakingTopics[index]['page']),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    speakingTopics[index]['title'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  //Icon(icons[index % icons.length], color: Colors.white),
                  Image.asset(
                    speakingTopics[index]['icon'],
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}






