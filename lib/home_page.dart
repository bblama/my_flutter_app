import 'package:flutter/material.dart';
import 'package:my_flutter_app/Other_Section/other_page.dart';
import 'Alphabet_Section/alphabet_page.dart';
import 'Vocabulary_Section/vocabulary_page.dart';
import 'Grammer_Section/grammar_page.dart';
import 'Speaking_Section/speaking_page.dart';
import 'Kanji_Section/kanji_page.dart';

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
            title: Text('Other'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtherPage()),
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
