import 'package:flutter/material.dart';

class JLPT_N5_vocab extends StatelessWidget {
  //define list of vocabulary items
  final List<String> imageList = [
    'assets/n5_vocab/n5_vocab_1.png',
    'assets/n5_vocab/n5_vocab_2.png',
    'assets/n5_vocab/n5_vocab_3.png',
    'assets/n5_vocab/n5_vocab_4.png',
    'assets/n5_vocab/n5_vocab_6.png',
    'assets/n5_vocab/n5_vocab_7.png',
    'assets/n5_vocab/n5_vocab_8.png',
    'assets/n5_vocab/n5_vocab_9.png',
    'assets/n5_vocab/n5_vocab_10.png',
    'assets/n5_vocab/n5_vocab_12.png',
    'assets/n5_vocab/n5_vocab_13.png',
    'assets/n5_vocab/n5_vocab_14.png',
    'assets/n5_vocab/n5_vocab_15.png',
    'assets/n5_vocab/n5_vocab_16.png',
    'assets/n5_vocab/n5_vocab_17.png',
    'assets/n5_vocab/n5_vocab_18.png',
    'assets/n5_vocab/n5_vocab_19.png',
    'assets/n5_vocab/n5_vocab_20.png',
    'assets/n5_vocab/n5_vocab_21.png',
    'assets/n5_vocab/n5_vocab_22.png',
    'assets/n5_vocab/n5_vocab_23.png',
    'assets/n5_vocab/n5_vocab_24.png',
    'assets/n5_vocab/n5_vocab_25.png',
    'assets/n5_vocab/n5_vocab_26.png',
    'assets/n5_vocab/n5_vocab_27.png',
    'assets/n5_vocab/n5_vocab_28.png',
    'assets/n5_vocab/n5_vocab_29.png',
    'assets/n5_vocab/n5_vocab_30.png',
    'assets/n5_vocab/n5_vocab_31.png',
    'assets/n5_vocab/n5_vocab_32.png',
    'assets/n5_vocab/n5_vocab_33.png',
    'assets/n5_vocab/n5_vocab_34.png',
    'assets/n5_vocab/n5_vocab_35.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(200.0),
        child:AppBar(
          backgroundColor: Colors.purple,
          flexibleSpace: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/n5_kanji.jpg',
                  fit: BoxFit.fitHeight,
                  color: Colors.purple,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  child: Text(
                    'JLPT N5 Vocabulary',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200, // Fixed height for each image
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          width: double.infinity,
                          height: 400,
                          child: Center(
                            child: Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 50,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}