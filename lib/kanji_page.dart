import 'package:flutter/material.dart';

class KanjiPage extends StatelessWidget {
  final List<String> kanjiList = [
    '日', '月', '火', '水', '木', '金', '土',
    '山', '川', '田', '人', '子', '女', '男',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('漢字'),
        backgroundColor: Colors.purple, // Customize AppBar background color
        centerTitle: true, // Center the title
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0), // Adjust padding around the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          childAspectRatio: 1.0, // Aspect ratio of the grid items
        ),
        itemCount: kanjiList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                kanjiList[index],
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
