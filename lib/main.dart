import 'package:flutter/material.dart';
import 'translate_page.dart';
import 'vocabulary_page.dart';
import 'practice_page.dart';
import 'test_page.dart';
import 'other_page.dart';
import 'kanji_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(260.0),
          child: Container(color: Colors.purple,
          child: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Learning App',
            style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),)
          ],)),) ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/use.jpeg"),
              fit: BoxFit.fill),
        ),
      child:Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: [
            _buildGridTile(context, 'Translate', Icons.translate, TranslatePage()),
            _buildGridTile(context, 'Vocabulary', Icons.book, VocabularyPage()),
            _buildGridTile(context, 'Practice', Icons.school, PracticePage()),
            _buildGridTile(context, 'Test', Icons.quiz, TestPage()),
            _buildGridTileWithImage(context, 'Kanji', 'assets/kanji4.jpeg', KanjiPage()),
            _buildGridTile(context, 'Other', Icons.more_horiz, OtherPage()),
          ],
        ),
      ),
      ),
    );
  }

  Widget _buildGridTile(BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(26.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35, color: Colors.white),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildGridTileWithImage(BuildContext context, String title, String imagePath, Widget page) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 45, height: 40), // Display the custom image icon
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
