import 'package:flutter/material.dart';

class JLPT_N2_vocab extends StatelessWidget {
  final List<Map<String, dynamic>> otherTopics = [
    {
      'title': 'Lesson-1',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-2',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-3',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-4',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-5',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-6',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-7',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-8',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-9',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-10',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-11',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-12',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-13',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-14',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-15',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-16',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-17',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-18',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-19',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-20',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-21',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-22',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-23',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-24',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-25',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-26',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-27',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-28',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-29',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-30',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-31',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-32',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-33',
      'page': '',
      'icon': 'assets/n1_n5_jlpt.webp',
    },
    {
      'title': 'Lesson-34',
      'page': '',
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