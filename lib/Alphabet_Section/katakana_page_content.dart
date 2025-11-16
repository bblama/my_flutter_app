import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class KatakanaPageContent extends StatefulWidget {
  @override
  _KatakanaPageContentState createState() => _KatakanaPageContentState();
}
class _KatakanaPageContentState extends State<KatakanaPageContent> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Map<String, String>> katakanaList = [
    {"kana": "ア", "romaji": "a"},
    {"kana": "イ", "romaji": "i"},
    {"kana": "ウ", "romaji": "u"},
    {"kana": "エ", "romaji": "e"},
    {"kana": "オ", "romaji": "o"},
    {"kana": "カ", "romaji": "ka"},
    {"kana": "キ", "romaji": "ki"},
    {"kana": "ク", "romaji": "ku"},
    {"kana": "ケ", "romaji": "ke"},
    {"kana": "コ", "romaji": "ko"},
    {"kana": "サ", "romaji": "sa"},
    {"kana": "シ", "romaji": "shi"},
    {"kana": "ス", "romaji": "su"},
    {"kana": "セ", "romaji": "se"},
    {"kana": "ソ", "romaji": "so"},
    {"kana": "タ", "romaji": "ta"},
    {"kana": "チ", "romaji": "chi"},
    {"kana": "ツ", "romaji": "tsu"},
    {"kana": "テ", "romaji": "te"},
    {"kana": "ト", "romaji": "to"},
    {"kana": "ナ", "romaji": "na"},
    {"kana": "ニ", "romaji": "ni"},
    {"kana": "ヌ", "romaji": "nu"},
    {"kana": "ネ", "romaji": "ne"},
    {"kana": "ノ", "romaji": "no"},
    {"kana": "ハ", "romaji": "ha"},
    {"kana": "ヒ", "romaji": "hi"},
    {"kana": "フ", "romaji": "fu"},
    {"kana": "ヘ", "romaji": "he"},
    {"kana": "ホ", "romaji": "ho"},
    {"kana": "マ", "romaji": "ma"},
    {"kana": "ミ", "romaji": "mi"},
    {"kana": "ム", "romaji": "mu"},
    {"kana": "メ", "romaji": "me"},
    {"kana": "モ", "romaji": "mo"},
    {"kana": "ヤ", "romaji": "ya"},
    {"kana": "", "romaji": ""},
    {"kana": "ユ", "romaji": "yu"},
    {"kana": "", "romaji": ""},
    {"kana": "ヨ", "romaji": "yo"},
    {"kana": "ラ", "romaji": "ra"},
    {"kana": "リ", "romaji": "ri"},
    {"kana": "ル", "romaji": "ru"},
    {"kana": "レ", "romaji": "re"},
    {"kana": "ロ", "romaji": "ro"},
    {"kana": "ワ", "romaji": "wa"},
    {"kana": "", "romaji": ""},
    {"kana": "ン", "romaji": "n"},
    {"kana": "", "romaji": ""},
    {"kana": "ヲ", "romaji": "wo"},
    {"kana": "ガ", "romaji": "ga"},
    {"kana": "ギ", "romaji": "gi"},
    {"kana": "グ", "romaji": "gu"},
    {"kana": "ゲ", "romaji": "ge"},
    {"kana": "ゴ", "romaji": "go"},
    {"kana": "ザ", "romaji": "za"},
    {"kana": "ジ", "romaji": "ji"},
    {"kana": "ズ", "romaji": "zu"},
    {"kana": "ゼ", "romaji": "ze"},
    {"kana": "ゾ", "romaji": "zo"},
    {"kana": "ダ", "romaji": "da"},
    {"kana": "ヂ", "romaji": "ji"}, // Rare, used in native words
    {"kana": "ヅ", "romaji": "zu"}, // Rare, used in native words
    {"kana": "デ", "romaji": "de"},
    {"kana": "ド", "romaji": "do"},
    {"kana": "バ", "romaji": "ba"},
    {"kana": "ビ", "romaji": "bi"},
    {"kana": "ブ", "romaji": "bu"},
    {"kana": "ベ", "romaji": "be"},
    {"kana": "ボ", "romaji": "bo"},
    {"kana": "パ", "romaji": "pa"},
    {"kana": "ピ", "romaji": "pi"},
    {"kana": "プ", "romaji": "pu"},
    {"kana": "ペ", "romaji": "pe"},
    {"kana": "ポ", "romaji": "po"},
    {"kana": "", "romaji": ""},
    {"kana": "キャ", "romaji": "kya"},
    {"kana": "キュ", "romaji": "kyu"},
    {"kana": "キョ", "romaji": "kyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "シャ", "romaji": "sha"},
    {"kana": "シュ", "romaji": "shu"},
    {"kana": "ショ", "romaji": "sho"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "チャ", "romaji": "cha"},
    {"kana": "チュ", "romaji": "chu"},
    {"kana": "チョ", "romaji": "cho"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ニャ", "romaji": "nya"},
    {"kana": "ニュ", "romaji": "nyu"},
    {"kana": "ニョ", "romaji": "nyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ヒャ", "romaji": "hya"},
    {"kana": "ヒュ", "romaji": "hyu"},
    {"kana": "ヒョ", "romaji": "hyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ミャ", "romaji": "mya"},
    {"kana": "ミュ", "romaji": "myu"},
    {"kana": "ミョ", "romaji": "myo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "リャ", "romaji": "rya"},
    {"kana": "リュ", "romaji": "ryu"},
    {"kana": "リョ", "romaji": "ryo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ギャ", "romaji": "gya"},
    {"kana": "ギュ", "romaji": "gyu"},
    {"kana": "ギョ", "romaji": "gyo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ジャ", "romaji": "ja"},
    {"kana": "ジュ", "romaji": "ju"},
    {"kana": "ジョ", "romaji": "jo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ビャ", "romaji": "bya"},
    {"kana": "ビュ", "romaji": "byu"},
    {"kana": "ビョ", "romaji": "byo"},
    {"kana": "", "romaji": ""},
    {"kana": "", "romaji": ""},
    {"kana": "ピャ", "romaji": "pya"},
    {"kana": "ピュ", "romaji": "pyu"},
    {"kana": "ピョ", "romaji": "pyo"},
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
        itemCount: katakanaList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final character = katakanaList[index]["kana"]!;
          final romaji = katakanaList[index]["romaji"]!;

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