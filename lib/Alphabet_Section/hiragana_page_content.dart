import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HiraganaPageContent extends StatefulWidget {
  @override
  _HiraganaPageContentState createState() => _HiraganaPageContentState();
}
class _HiraganaPageContentState extends State<HiraganaPageContent> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Map<String, String>> hiraganaList = [
    {"kana": "あ", "romaji": "a"},
    {"kana": "い", "romaji": "i"},
    {"kana": "う", "romaji": "u"},
    {"kana": "え", "romaji": "e"},
    {"kana": "お", "romaji": "o"},
    {"kana": "か", "romaji": "ka"},
    {"kana": "き", "romaji": "ki"},
    {"kana": "く", "romaji": "ku"},
    {"kana": "け", "romaji": "ke"},
    {"kana": "こ", "romaji": "ko"},
    {"kana": "さ", "romaji": "sa"},
    {"kana": "し", "romaji": "shi"},
    {"kana": "す", "romaji": "su"},
    {"kana": "せ", "romaji": "se"},
    {"kana": "そ", "romaji": "so"},
    {"kana": "た", "romaji": "ta"},
    {"kana": "ち", "romaji": "chi"},
    {"kana": "つ", "romaji": "tsu"},
    {"kana": "て", "romaji": "te"},
    {"kana": "と", "romaji": "to"},
    {"kana": "な", "romaji": "na"},
    {"kana": "に", "romaji": "ni"},
    {"kana": "ぬ", "romaji": "nu"},
    {"kana": "ね", "romaji": "ne"},
    {"kana": "の", "romaji": "no"},
    {"kana": "は", "romaji": "ha"},
    {"kana": "ひ", "romaji": "hi"},
    {"kana": "ふ", "romaji": "fu"},
    {"kana": "へ", "romaji": "he"},
    {"kana": "ほ", "romaji": "ho"},
    {"kana": "ま", "romaji": "ma"},
    {"kana": "み", "romaji": "mi"},
    {"kana": "む", "romaji": "mu"},
    {"kana": "め", "romaji": "me"},
    {"kana": "も", "romaji": "mo"},
    {"kana": "や", "romaji": "ya"},
    {"kana": "", "romaji": ""},
    {"kana": "ゆ", "romaji": "yu"},
    {"kana": "", "romaji": ""},
    {"kana": "よ", "romaji": "yo"},
    {"kana": "ら", "romaji": "ra"},
    {"kana": "り", "romaji": "ri"},
    {"kana": "る", "romaji": "ru"},
    {"kana": "れ", "romaji": "re"},
    {"kana": "ろ", "romaji": "ro"},
    {"kana": "わ", "romaji": "wa"},
    {"kana": "", "romaji": ""},
    {"kana": "ん", "romaji": "n"},
    {"kana": "", "romaji": ""},
    {"kana": "を", "romaji": "wo"},
    {"kana": "が", "romaji": "ga"},
    {"kana": "ぎ", "romaji": "gi"},
    {"kana": "ぐ", "romaji": "gu"},
    {"kana": "げ", "romaji": "ge"},
    {"kana": "ご", "romaji": "go"},
    {"kana": "ざ", "romaji": "za"},
    {"kana": "じ", "romaji": "ji"},
    {"kana": "ず", "romaji": "zu"},
    {"kana": "ぜ", "romaji": "ze"},
    {"kana": "ぞ", "romaji": "zo"},
    {"kana": "だ", "romaji": "da"},
    {"kana": "ぢ", "romaji": "ji"}, // Rare, used in native words
    {"kana": "づ", "romaji": "zu"}, // Rare, used in native words
    {"kana": "で", "romaji": "de"},
    {"kana": "ど", "romaji": "do"},
    {"kana": "ば", "romaji": "ba"},
    {"kana": "び", "romaji": "bi"},
    {"kana": "ぶ", "romaji": "bu"},
    {"kana": "べ", "romaji": "be"},
    {"kana": "ぼ", "romaji": "bo"},
    {"kana": "ぱ", "romaji": "pa"},
    {"kana": "ぴ", "romaji": "pi"},
    {"kana": "ぷ", "romaji": "pu"},
    {"kana": "ぺ", "romaji": "pe"},
    {"kana": "ぽ", "romaji": "po"},
    {"kana": "", "romaji": ""},
    {"kana": "きゃ", "romaji": "kya"},
    {"kana": "きゅ", "romaji": "kyu"},
    {"kana": "きょ", "romaji": "kyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "しゃ", "romaji": "sha"},
    {"kana": "しゅ", "romaji": "shu"},
    {"kana": "しょ", "romaji": "sho"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ちゃ", "romaji": "cha"},
    {"kana": "ちゅ", "romaji": "chu"},
    {"kana": "ちょ", "romaji": "cho"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "にゃ", "romaji": "nya"},
    {"kana": "にゅ", "romaji": "nyu"},
    {"kana": "にょ", "romaji": "nyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ひゃ", "romaji": "hya"},
    {"kana": "ひゅ", "romaji": "hyu"},
    {"kana": "ひょ", "romaji": "hyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "みゃ", "romaji": "mya"},
    {"kana": "みゅ", "romaji": "myu"},
    {"kana": "みょ", "romaji": "myo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "りゃ", "romaji": "rya"},
    {"kana": "りゅ", "romaji": "ryu"},
    {"kana": "りょ", "romaji": "ryo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ぎゃ", "romaji": "gya"},
    {"kana": "ぎゅ", "romaji": "gyu"},
    {"kana": "ぎょ", "romaji": "gyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "じゃ", "romaji": "ja"},
    {"kana": "じゅ", "romaji": "ju"},
    {"kana": "じょ", "romaji": "jo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "びゃ", "romaji": "bya"},
    {"kana": "びゅ", "romaji": "byu"},
    {"kana": "びょ", "romaji": "byo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ぴゃ", "romaji": "pya"},
    {"kana": "ぴゅ", "romaji": "pyu"},
    {"kana": "ぴょ", "romaji": "pyo"},
    {"kana": "", "romaji": ""},
  ];

  @override
  void initState() {
    super.initState();
    _initTts();
  }
  Future<void> _initTts() async {
    await flutterTts.setLanguage("ja-JP");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
  }

  Future<void> _speak(String text) async {
    await flutterTts.speak(text);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: hiraganaList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final character = hiraganaList[index]["kana"]!;
          final romaji = hiraganaList[index]["romaji"]!;

          //skip rendering if both kana and romaji are empty
          if(character.isEmpty && romaji.isEmpty){
            return SizedBox.shrink();
          }
          return GestureDetector(
            onTap: () => _speak(character),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    character,
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                  SizedBox(height: 2),
                  Text(
                    romaji,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}