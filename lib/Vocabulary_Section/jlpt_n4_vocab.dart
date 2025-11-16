import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_1.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_10.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_11.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_12.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_13.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_14.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_15.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_16.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_17.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_18.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_19.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_2.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_20.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_21.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_23.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_24.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_25.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_3.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_4.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_5.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_6.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_7.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_8.dart';
import 'package:my_flutter_app/Vocabulary_Section/N4_vocab/Lesson_9.dart';

class JLPT_N4_vocab extends StatelessWidget {
  final List<Map<String, dynamic>> otherTopics = [
    {
      'title': 'Lesson-1',
      'page': Lesson1(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-2',
      'page': Lesson2(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-3',
      'page': Lesson3(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-4',
      'page': Lesson4(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-5',
      'page': Lesson5(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-6',
      'page': Lesson6(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-7',
      'page': Lesson7(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-8',
      'page': Lesson8(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-9',
      'page': Lesson9(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-10',
      'page': Lesson10(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-11',
      'page': Lesson11(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-12',
      'page': Lesson12(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-13',
      'page': Lesson13(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-14',
      'page': Lesson14(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-15',
      'page': Lesson15(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-16',
      'page': Lesson16(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-17',
      'page': Lesson17(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-18',
      'page': Lesson18(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-19',
      'page': Lesson19(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-20',
      'page': Lesson20(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-21',
      'page': Lesson21(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-22',
      'page': Lesson21(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-23',
      'page': Lesson23(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-24',
      'page': Lesson24(),
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-25',
      'page': Lesson25(),
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