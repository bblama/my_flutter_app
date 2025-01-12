import 'package:flutter/material.dart';
import 'translate_page.dart';
import 'vocabulary_page.dart';
import 'practice_page.dart';
import 'test_page.dart';
import 'kanji_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Translate'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TranslatePage()),
              );
            },
          ),
          ListTile(
            title: Text('Vocabulary'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VocabularyPage()),
              );
            },
          ),
          ListTile(
            title: Text('Practice'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PracticePage()),
              );
            },
          ),
          ListTile(
            title: Text('Test'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestPage()),
              );
            },
          ),
          ListTile(
            title: Text('Kanji'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KanjiPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
