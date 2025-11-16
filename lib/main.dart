import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Other_Section/other_page.dart';
import 'splash_screen.dart';
import 'Alphabet_Section/alphabet_page.dart';
import 'Vocabulary_Section/vocabulary_page.dart';
import 'Grammer_Section/grammar_page.dart';
import 'Speaking_Section/speaking_page.dart';
import 'Kanji_Section/kanji_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //Future.delayed(Duration(seconds: 5), () {
      //Navigator.pushReplacementNamed(context, '/home');
   // });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:GestureDetector(
        onTap: (){
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Container(
            width: 140,
            height: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              image: DecorationImage(
                image: AssetImage('assets/learn.png',),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
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
                    //alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/syoambhu.jpeg',
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
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/nepal_flag.jpeg"),
              fit: BoxFit.fill),
        ),
      child:Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildGridTile(context, 'Alphabet', Icons.sort_by_alpha, AlphabetPage()),
            _buildGridTile(context, 'Vocabulary', Icons.book, VocabularyPage()),
            _buildGridTile(context, 'Grammer', Icons.rule_sharp, GrammarPage()),
            //_buildGridTile(context, 'Speaking', Icons.mic, SpeakingPage()),
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
          borderRadius: BorderRadius.circular(260.0),
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
        borderRadius: BorderRadius.circular(100.0),
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
