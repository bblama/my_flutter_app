import 'package:flutter/material.dart';
import 'package:my_flutter_app/Other_Section/JLPT_Questions.dart';
import 'JLPT_Questions.dart';
import 'Speak_into_text.dart';
import 'Quick_Test.dart';

class OtherPage extends StatelessWidget {
  final List<Map<String, dynamic>> otherTopics = [
    {
      'title': 'JLPT_Questions',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Quick_Test',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Vocabulary_Test',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Kanji_Test',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'JLPT_Exam_Tips',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Interview_Preparations',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Speak_into_text',
      'page':  Speak_into_text(),
      'icon': 'assets/n1_n5_jlpt.webp',
    }

  ];

  final List<Color> colors =[
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.tealAccent,
    Colors.purpleAccent,
    Colors.cyanAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.2), // Dynamically scales
        child: AppBar(
          backgroundColor: Colors.purple,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Container(
                    width: constraints.maxWidth, // Uses available width
                    height: constraints.maxHeight, // Uses available height
                    child: Image.asset(
                      'assets/nepal.jpeg',
                      fit: BoxFit.fill,
                      color: Colors.purple.withOpacity(0.5),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: otherTopics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => otherTopics[index]['page']),
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
                    otherTopics[index]['title'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  //Icon(icons[index % icons.length], color: Colors.white),
                  Image.asset(
                    otherTopics[index]['icon'],
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



