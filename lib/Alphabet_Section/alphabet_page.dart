import 'package:flutter/material.dart';
import 'hiragana_page_content.dart';
import 'katakana_page_content.dart';

class AlphabetPage extends StatefulWidget {
  @override
  _AlphabetPageState createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  int _selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  Widget _getContent() {
    switch (_selectedButtonIndex) {
      case 0:
        return HiraganaPageContent();
      case 1:
        return KatakanaPageContent();
      default:
        return Center(child: Text('Select a Page', style: TextStyle(fontSize: 14)));
    }
  }

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
                      'assets/nepal_mountain.jpg',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align buttons to the start of the column
        children: [
          SizedBox(height: 20), // Space between AppBar and buttons
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Align buttons in the center horizontally
              children: [
                SizedBox(
                  width: 155, // Set width for buttons
                  height: 45, // Set height for buttons
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedButtonIndex == 0 ? Colors.blue.shade700 : Colors.blue, // Highlight selected button
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: _selectedButtonIndex == 0 ? Colors.redAccent.shade700 : Colors.transparent, // Outline color when selected
                           width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => _onButtonPressed(0),
                    child: Text(
                      'Hiragara\nひらがな',
                      style: TextStyle(
                        fontSize: 14, // Set font size
                        fontWeight: FontWeight.bold, // Set font weight
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20), // Space between buttons
                SizedBox(
                  width: 155, // Set width for buttons
                  height: 45, // Set height for buttons
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedButtonIndex == 1 ? Colors.green.shade700 : Colors.green, // Highlight selected button
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: _selectedButtonIndex == 1 ? Colors.redAccent.shade700 : Colors.transparent, // Outline color when selected
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => _onButtonPressed(1),
                    child: Text(
                      'Katakana\nカタカナ',
                      style: TextStyle(
                        fontSize: 14, // Set font size
                        fontWeight: FontWeight.bold, // Set font weight
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: _getContent()), // Display content based on selected button
        ],
      ),
    );
  }
}

