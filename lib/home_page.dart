import 'package:flutter/material.dart';
import 'alphabet_page.dart';
import 'vocabulary_page.dart';
import 'grammar_page.dart';
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
            title: Text('Alphabet'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlphabetPage()),
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
            title: Text('Grammer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GrammarPage()),
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
