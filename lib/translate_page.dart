import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatePage extends StatefulWidget {
  @override
  _TranslatePageState createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String _translatedText = '';
  String _selectedLanguage = 'en'; // Default language
  GoogleTranslator translator = GoogleTranslator();

  final Map<String, String> _languages = {
    'English': 'en',
    'Spanish': 'es',
    'French': 'fr',
    'Japanese': 'ja',
    'Chinese': 'zh-cn',
    'Nepali': 'ne',
    // Add more languages as needed
  };

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<String> translateText(String text, String targetLanguage) async {
    var translation = await translator.translate(text, to: targetLanguage);
    return translation.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: 'Enter text to translate',
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                enableSuggestions: false,
                // onTap: () {
                //   _focusNode.requestFocus();
                // },
              ),
              SizedBox(height: 20),
              DropdownButton<String>(
                value: _selectedLanguage,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                },
                items: _languages.entries.map<DropdownMenuItem<String>>((entry) {
                  return DropdownMenuItem<String>(
                    value: entry.value,
                    child: Text(entry.key),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final translation = await translateText(_textEditingController.text, _selectedLanguage);
                    setState(() {
                      _translatedText = translation;
                    });
                  } catch (e) {
                    setState(() {
                      _translatedText = 'Error: ${e.toString()}';
                    });
                  }
                },
                child: Text('Translate'),
              ),
              SizedBox(height: 20),
              Text(
                _translatedText,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
