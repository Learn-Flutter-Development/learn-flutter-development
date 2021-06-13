import 'package:app_name/application/services/services.dart';
import 'package:app_name/application/theme/colors.dart';
import 'package:flutter/material.dart';

Expanded pianoWidget(int soundNumber, Color color) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(''),
    ),
  );
}

Expanded textWidget(String displayText, Color color) {
  return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            displayText ?? 'no item found',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: color,
            ),
          ),
        ),
      ));
}

Expanded secondaryButton(String displayText, Color color) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          displayText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    ),
  );
}

Card makeDashboardItem(
  BuildContext context,
  String route,
  String title,
  IconData icon,
) {
  return Card(
      elevation: 1.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: grey),
        child: new TextButton(
          onPressed: () {
            routeFunction(context, route);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 50.0),
              Center(
                  child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              )),
              SizedBox(height: 20.0),
              new Center(
                child: new Text(title,
                    style: new TextStyle(fontSize: 18.0, color: Colors.black)),
              )
            ],
          ),
        ),
      ));
}

List<Icon> scoreKeeper = [];

// check icon when user selects right answer
void correctAnswerWidget() {
  return (scoreKeeper.add(
    Icon(
      Icons.check,
      color: green,
    ),
  ));
}

// close icon when user selects wrong answer
void wrongAnswerWidget() {
  return (scoreKeeper.add(Icon(Icons.close, color: red)));
}
