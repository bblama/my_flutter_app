import 'package:flutter/material.dart';
import 'n5_list/grammer_1.dart';
import 'n5_list/grammer_2.dart';
import 'n5_list/grammer_3.dart';
import 'n5_list/grammer_4.dart';
import 'n5_list/grammer_5.dart';
import 'n5_list/grammer_6.dart';
import 'n5_list/grammer_7.dart';
import 'n5_list/grammer_8.dart';
import 'n5_list/grammer_9.dart';
import 'n5_list/grammer_10.dart';
import 'n5_list/grammer_11.dart';
import 'n5_list/grammer_12.dart';
import 'n5_list/grammer_13.dart';
import 'n5_list/grammer_14.dart';
import 'n5_list/grammer_15.dart';
import 'n5_list/grammer_16.dart';
import 'n5_list/grammer_17.dart';
import 'n5_list/grammer_18.dart';
import 'n5_list/grammer_19.dart';
import 'n5_list/grammer_20.dart';
import 'n5_list/grammer_21.dart';
import 'n5_list/grammer_22.dart';
import 'n5_list/grammer_23.dart';
import 'n5_list/grammer_24.dart';
import 'n5_list/grammer_25.dart';
import 'n5_list/grammer_26.dart';
import 'n5_list/grammer_27.dart';
import 'n5_list/grammer_28.dart';
import 'n5_list/grammer_29.dart';
import 'n5_list/grammer_30.dart';
import 'n5_list/grammer_31.dart';
import 'n5_list/grammer_32.dart';
import 'n5_list/grammer_33.dart';
import 'n5_list/grammer_34.dart';
import 'n5_list/grammer_35.dart';
import 'n5_list/grammer_36.dart';
import 'n5_list/grammer_37.dart';
import 'n5_list/grammer_38.dart';
import 'n5_list/grammer_39.dart';
import 'n5_list/grammer_40.dart';
import 'n5_list/grammer_41.dart';

class JLPT_N5_grammar extends StatelessWidget {

  final List<Map<String, dynamic>> grammerTopics = [
    {
      'title': '#1.だけ（dake）\n only,just',
      'page': grammer_1()
    },
    {
      'title': '#2.だろう（darou）\n probably',
      'page': grammer_2()
    },
    {
      'title': '#3.で（de）\n at, in',
      'page': grammer_3()
    },
    {
      'title': '#4.でしょう（deshou）\n i think, probably',
      'page': grammer_4()
    },
    {
      'title': '#5.が（ga）\n but, however',
      'page': grammer_5()
    },
    {
      'title': '#6.がある（gaaru）\n there is(used non-living thing)',
      'page': grammer_6()
    },
    {
      'title': '#7.がいる（gairu）\n there is(used living thing)',
      'page': grammer_7()
    },
    {
      'title': '#8.ほうがいい（hou ga ii）\n better to',
      'page': grammer_8()
    },
    {
      'title': '#9.いちばん (ichiban) \n the most',
      'page': grammer_9()
    },
    {
      'title': '#10.か (ka) \n or (A or B, choice between 2 objects)',
      'page': grammer_10()
    },
    {
      'title': '#11.から (kara) \n because, since',
      'page': grammer_11()
    },
    {
      'title': '#12.から (from) \n from',
      'page': grammer_12()
    },
    {
      'title': '#13.けれども (keredomo) \n but, although',
      'page': grammer_13()
    },
    {
      'title': '#14.くらい (kurai) \n about, approximately',
      'page': grammer_14()
    },
    {
      'title': '#15.まだ (mada) \n still, not yet ',
      'page': grammer_15()
    },
    {
      'title': '#16.まえに (mae ni) \n before',
      'page': grammer_16()
    },
    {
      'title': '#17.ませんか (masen ka) \n let`s, won`t you',
      'page': grammer_17()
    },
    {
      'title': '#18.ましょう (mashou) \n let`s , shall we',
      'page': grammer_18()
    },
    {
      'title': '#19.も (mo) \n also, too, as well',
      'page': grammer_19()
    },
    {
      'title': '#20.もう（mo）\n already, anymore',
      'page': grammer_20()
    },
    {
      'title': '#21.な (na) \n don`t do',
      'page': grammer_21()
    },
    {
      'title': '#22.ないでください (naidekudasai) \n please don`t ',
      'page': grammer_22()
    },
    {
      'title': '#23.なる (naru) \n to become',
      'page': grammer_23()
    },
    {
      'title': '#24.に (ni) \n in, at, to, for',
      'page': grammer_24()
    },
    {
      'title': '#25.に/へ (ni/e) \n to',
      'page': grammer_25()
    },
    {
      'title': '#26.にいく (ni iku) \n to go in order to',
      'page': grammer_26()
    },
    {
      'title': '#27.にする (nisuru) \n to decide on',
      'page': grammer_27()
    },
    {
      'title': '#28.のがじょうず (no ga jouzu) \n to be good at',
      'page': grammer_28()
    },
    {
      'title': '#29.のがすき (no ga suki) \n like/ love doing',
      'page': grammer_29()
    },
    {
      'title': '#30.のがへた (no ga heta) \n to be bad at',
      'page': grammer_30()
    },
    {
      'title': '#31.すぎる (sugiru) \n too much',
      'page': grammer_31()
    },
    {
      'title': '#32.たい (tai) \n want to',
      'page': grammer_32()
    },
    {
      'title': '#33.たことがある (takotogaaru) \n have done before',
      'page': grammer_33()
    },
    {
      'title': '#34.ている (teiru) \n is/are/am doing',
      'page': grammer_34()
    },
    {
      'title': '#35.てもいい (temo ii) \n is okay, is alright to , can',
      'page': grammer_35()
    },
    {
      'title': '#36.てから (tekara) \n after doing',
      'page': grammer_36()
    },
    {
      'title': '#37.てはいけない (tewaikenai) \n must not, may not',
      'page': grammer_37()
    },
    {
      'title': '#38.と (to) \n and, with',
      'page': grammer_38()
    },
    {
      'title': '#39.つもりだ (tsumorida) \n plan to, intend to',
      'page': grammer_39()
    },
    {
      'title': '#40.や (ya) \n and',
      'page': grammer_40()
    },
    {
      'title': '#41.より〜のほうが (yori~nohouga~) \n is more ~ than',
      'page': grammer_41()
    }
  ];

  final List<Color> colors = [
    Colors.white,
  ];


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
                          'assets/jlpt_grammar.jpg',
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
      body: ListView.builder(
        physics: const BouncingScrollPhysics(), // ← Add this line
       // physics: const ClampingScrollPhysics(), // For Android-like behavior
        padding: const EdgeInsets.all(20.0),
        itemCount: grammerTopics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => grammerTopics[index]['page']),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.tealAccent.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      grammerTopics[index]['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
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
