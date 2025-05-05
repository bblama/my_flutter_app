import 'package:flutter/material.dart';
import 'jlpt_n1_grammar.dart';
import 'jlpt_n2_grammar.dart';
import 'jlpt_n3_grammar.dart';
import 'jlpt_n4_grammar.dart';
import 'jlpt_n5_grammar.dart';

class GrammarPage extends StatelessWidget {
  final List<Map<String, dynamic>> grammerTopics = [
    {
      'title': 'JLPT N5 Level',
      'page': JLPT_N5_grammar(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'JLPT N4 Level',
      'page': JLPT_N4_grammar(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'JLPT N3 Level',
      'page': JLPT_N3_grammar(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'JLPT N2 Level',
      'page': JLPT_N2_grammmar(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'JLPT N1 Level',
      'page': JLPT_N1_grammar(),
      'icon': 'assets/n1_n5_jlpt.webp',
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
                    //alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/jlpt_grammar.jpg',
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
        itemCount: grammerTopics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => grammerTopics[index]['page']),
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
                    grammerTopics[index]['title'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  //Icon(icons[index % icons.length], color: Colors.white),
                  Image.asset(
                    grammerTopics[index]['icon'],
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

