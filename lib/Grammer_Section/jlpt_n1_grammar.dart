import 'package:flutter/material.dart';

final List<Map<String, dynamic>> grammerTopics = [
  {
    'title': 'Comming Soon Please Wait!!!!!',
  },
];
final List<Color> colors = [
  Colors.white,
];

class JLPT_N1_grammar extends StatelessWidget {
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
                   // alignment: Alignment.topLeft,
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
        physics: const BouncingScrollPhysics(), // ← Add this line
        // physics: const ClampingScrollPhysics(), // For Android-like behavior
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
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.tealAccent.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      grammerTopics[index]['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
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

