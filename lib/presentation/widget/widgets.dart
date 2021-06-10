import 'package:app_name/application/services/services.dart';
import 'package:app_name/application/theme/colors.dart';
import 'package:app_name/presentation/router/routes.dart';
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

Card makeDashboardItem(BuildContext context, String title, IconData icon) {
  return Card(
      elevation: 1.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: grey),
        child: new TextButton(
          onPressed: () {
            Navigator.pushNamed(context, pianoPageRoute);
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
