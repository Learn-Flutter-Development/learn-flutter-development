import 'package:app_name/application/theme/colors.dart';
import 'package:app_name/presentation/widget/widgets.dart';
import 'package:flutter/material.dart';

class Quizzler extends StatefulWidget {
  Quizzler({Key key}) : super(key: key);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  int triviaQuestionNo = 0;
  int listLength = bibleTrivia.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: navyBlue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: blue4,
          title: Text(
            'Bible Trivia',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      textWidget(
                        questionNo[triviaQuestionNo],
                        white,
                      ),
                      textWidget(
                        bibleTrivia[triviaQuestionNo],
                        white,
                      ),
                      textWidget(
                        choices[triviaQuestionNo],
                        white,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextButton(
                            onPressed: () {
                              bool correctAnswer =
                                  triviaAnswers[triviaQuestionNo];
                              if (correctAnswer == true) {
                                setState(() {
                                  scoreKeeper.add(
                                    Icon(
                                      Icons.check,
                                      color: green,
                                    ),
                                  );

                                  triviaQuestionNo++;
                                });
                              } else {
                                setState(() {
                                  scoreKeeper
                                      .add(Icon(Icons.close, color: red));
                                  triviaQuestionNo++;
                                });
                              }
                            },
                            child: Text(
                              "True",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: green,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextButton(
                            onPressed: () {
                              bool correctAnswer =
                                  triviaAnswers[triviaQuestionNo];
                              if (correctAnswer == false) {
                                setState(() {
                                  scoreKeeper
                                      .add(Icon(Icons.check, color: green));
                                  triviaQuestionNo++;
                                });
                              } else {
                                setState(() {
                                  scoreKeeper
                                      .add(Icon(Icons.close, color: red));
                                  triviaQuestionNo++;
                                });
                              }
                            },
                            child: Text(
                              'False',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: red,
                            ),
                          ),
                        ),
                      ),
                      Row(children: scoreKeeper)
                    ]))));
  }
}
