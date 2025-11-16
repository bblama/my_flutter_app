import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Kanji {
  final String character;
  final String meaning;
  final List<String> kunyomi;
  final List<String> onyomi;
  final int strokeCount;
  final String jlptLevel;

  Kanji({
    required this.character,
    required this.meaning,
    required this.kunyomi,
    required this.onyomi,
    required this.strokeCount,
    required this.jlptLevel,
  });

  factory Kanji.fromJson(Map<String, dynamic> json) {
    return Kanji(
      character: json['character'] ?? '',
      meaning: json['meaning'] ?? '',
      kunyomi: List<String>.from(json['kunyomi'] ?? []),
      onyomi: List<String>.from(json['onyomi'] ?? []),
      strokeCount: json['stroke_count'] ?? 0,
      jlptLevel: json['jlpt'] ?? '',
    );
  }
}

class KanjiApiService {
  static const String _baseUrl = 'https://kanjiapi.dev/v1/';

  Future<List<Kanji>> getJlptN5Kanji() async {
    try {
      final response = await http.get(Uri.parse('${_baseUrl}kanji/jlpt-n5'));

      if (response.statusCode == 200) {
        final List<dynamic> kanjiList = json.decode(response.body);
        final List<Kanji> kanjis = [];

        // Fetch details for each kanji
        for (String kanjiChar in kanjiList) {
          final kanjiDetails = await getKanjiDetails(kanjiChar);
          if (kanjiDetails != null) {
            kanjis.add(kanjiDetails);
          }
        }

        return kanjis;
      } else {
        throw Exception('Failed to load JLPT N5 kanji list');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<Kanji?> getKanjiDetails(String character) async {
    try {
      final response = await http.get(Uri.parse('${_baseUrl}kanji/$character'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return Kanji.fromJson(data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}

class JLPT_N5_kanji extends StatefulWidget {
  @override
  _JLPT_N5_kanjiState createState() => _JLPT_N5_kanjiState();
}

class _JLPT_N5_kanjiState extends State<JLPT_N5_kanji> {
  final KanjiApiService _apiService = KanjiApiService();
  List<Kanji> _kanjiList = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _loadKanji();
  }

  Future<void> _loadKanji() async {
    try {
      final kanjis = await _apiService.getJlptN5Kanji();
      setState(() {
        _kanjiList = kanjis;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to load kanji: $e';
        _isLoading = false;
      });
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });
    await _loadKanji();
  }

  Widget _buildKanjiCard(Kanji kanji) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Kanji Character
            Text(
              kanji.character,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontFamily: 'Noto Sans JP',
              ),
            ),

            // Meaning
            Text(
              kanji.meaning,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),

            // Readings
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (kanji.onyomi.isNotEmpty)
                  Text(
                    '音読み: ${kanji.onyomi.join(', ')}',
                    style: TextStyle(fontSize: 12),
                  ),
                if (kanji.kunyomi.isNotEmpty)
                  Text(
                    '訓読み: ${kanji.kunyomi.join(', ')}',
                    style: TextStyle(fontSize: 12),
                  ),
              ],
            ),

            // Stroke Count
            Text(
              'Strokes: ${kanji.strokeCount}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JLPT N5 Kanji'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _refreshData,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_errorMessage.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _refreshData,
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (_kanjiList.isEmpty) {
      return Center(
        child: Text('No kanji found'),
      );
    }

    return RefreshIndicator(
      onRefresh: _refreshData,
      child: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: _kanjiList.length,
        itemBuilder: (context, index) {
          return _buildKanjiCard(_kanjiList[index]);
        },
      ),
    );
  }
}