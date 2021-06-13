import 'package:app_name/application/theme/colors.dart';
import 'package:app_name/application/theme/strings.dart';
import 'package:app_name/application/theme/style.dart';
import 'package:app_name/presentation/widget/widgets.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.Interpratation});
  final String resultText;
  final String bmiResult;
  final String Interpratation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        title: Text(bmiResult),
        backgroundColor: primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              resultTitle,
              textAlign: TextAlign.center,
              style: titleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: CustomeCard(
              colour: active,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText, style: resultTextStyle),
                  Text(bmiResult, style: bmiResultTextStyle),
                  Text(Interpratation, style: normalTextStyle),
                ],
              ),
            ),
          ),
          ButtomButton(
            displayText: calculate,
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
