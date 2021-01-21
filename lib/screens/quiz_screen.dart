import 'package:flutter/material.dart';
import 'package:simple_quiz_app/dummy_data.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _questIndex = 0;
  int _correctAnswers = 0;
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZey'),
        centerTitle: true,
      ),
      body: (_questIndex == 10)
          ? Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('لقد قمت بالإجابة علي',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(' $_correctAnswers ',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                    Text('أسئلة بشكل صحيح تهانينا',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _questIndex = 0;
                          _correctAnswers = 0;
                          _answer = '';
                        });
                      },
                      child: Container(
                        width: 140,
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text('!أعد المحاولة',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              // alignment: Alignment.topRight,
              margin: EdgeInsets.all(40),
              child: Column(
                children: [
                  Container(
                    // alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        Text(
                          'َQuestion ${_questIndex + 1}',
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 30),
                        ),
                        Text(
                          '/${DUMMY_QUESTIONS.length}',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    // alignment: Alignment.center,
                    child: Text(
                      '${DUMMY_QUESTIONS[_questIndex].question}',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 18),
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (DUMMY_ANSWERS[_questIndex][0] ==
                                    DUMMY_QUESTIONS[_questIndex].answer) {
                                  _questIndex++;
                                  _correctAnswers++;
                                  _answer = '!صواب';
                                } else {
                                  _questIndex++;
                                  _answer = '!خطأ';
                                }
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15),
                              width: double.infinity,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Center(
                                  child: Text(
                                '${DUMMY_ANSWERS[_questIndex][0]}',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (DUMMY_ANSWERS[_questIndex][1] ==
                                    DUMMY_QUESTIONS[_questIndex].answer) {
                                  _questIndex++;
                                  _correctAnswers++;
                                  _answer = '!صواب';
                                } else {
                                  _questIndex++;
                                  _answer = '!خطأ';
                                }
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15),
                              padding: EdgeInsets.all(12),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Center(
                                  child: Text(
                                      '${DUMMY_ANSWERS[_questIndex][1]}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (DUMMY_ANSWERS[_questIndex][2] ==
                                    DUMMY_QUESTIONS[_questIndex].answer) {
                                  _questIndex++;
                                  _correctAnswers++;
                                  _answer = '!صواب';
                                } else {
                                  _questIndex++;
                                  _answer = '!خطأ';
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Center(
                                  child: Text(
                                      '${DUMMY_ANSWERS[_questIndex][2]}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: _answer == '!صواب'
                          ? Colors.green
                          : (_answer == '!خطأ')
                              ? Colors.red
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        _answer != '' ? _answer : '',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
