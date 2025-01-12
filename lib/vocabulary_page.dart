import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

class Vocabulary {
  final String word;
  final String definition;

  Vocabulary({required this.word, required this.definition});

  factory Vocabulary.fromJson(Map<String, dynamic> json) {
    return Vocabulary(
      word: json['word'],
      definition: json['definition'],
    );
  }
}

class VocabularyPage extends StatefulWidget {
  @override
  _VocabularyPageState createState() => _VocabularyPageState();
}

class _VocabularyPageState extends State<VocabularyPage> {
  List<Vocabulary> vocabularyList = [];

  @override
  void initState() {
    super.initState();
    loadVocabulary();
  }

  Future<void> loadVocabulary() async {
    final String response = await rootBundle.rootBundle.loadString('assets/vocabulary.json');
    final List<dynamic> data = jsonDecode(response);
    setState(() {
      vocabularyList = data.map((json) => Vocabulary.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vocabulary'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: vocabularyList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vocabularyList[index].word),
            subtitle: Text(vocabularyList[index].definition),
          );
        },
      ),
    );
  }
}
