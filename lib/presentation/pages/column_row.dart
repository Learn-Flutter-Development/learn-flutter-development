import 'package:app_name/application/theme/colors.dart';
import 'package:flutter/material.dart';

class ColumnRow extends StatefulWidget {
  ColumnRow({Key key}) : super(key: key);

  @override
  _ColumnRowState createState() => _ColumnRowState();
}

class _ColumnRowState extends State<ColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Icon(
              Icons.add_circle,
              color: blue4,
            ),
            Icon(
              Icons.add_circle,
              color: blue4,
            ),
            Icon(
              Icons.add_circle,
              color: blue4,
            )
          ],
        ),
      ),
    );
  }
}
