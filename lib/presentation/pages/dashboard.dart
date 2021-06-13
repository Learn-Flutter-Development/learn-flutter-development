import 'package:app_name/application/theme/colors.dart';
import 'package:app_name/presentation/router/routes.dart';
import 'package:app_name/presentation/widget/widgets.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: britishRacingGreen,
        centerTitle: true,
        title: Text(
          'DASHBOARD',
          style: TextStyle(color: white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem(
              context,
              pianoPageRoute,
              "Piano",
              Icons.music_note,
            ),
            makeDashboardItem(
              context,
              quizePageRoute,
              "Quize",
              Icons.book,
            ),
            makeDashboardItem(
              context,
              calculatorPageRoute,
              "Calculator",
              Icons.calculate_rounded,
            ),
            makeDashboardItem(
              context,
              rowColumPageRoute,
              "Column and row",
              Icons.alarm,
            ),
            makeDashboardItem(
              context,
              pianoPageRoute,
              "Alphabet",
              Icons.alarm,
            ),
            makeDashboardItem(
              context,
              pianoPageRoute,
              "Alphabet",
              Icons.alarm,
            ),
          ],
        ),
      ),
    );
  }
}
