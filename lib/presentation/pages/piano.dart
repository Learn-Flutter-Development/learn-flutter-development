import 'package:app_name/application/theme/colors.dart';
import 'package:app_name/presentation/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class XyloPhoneApp extends StatefulWidget {
  @override
  _XyloPhoneAppState createState() => _XyloPhoneAppState();
}

class _XyloPhoneAppState extends State<XyloPhoneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Piano',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: britishRacingGreen,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pianoWidget(1, darkGreen, 'Do'),
              pianoWidget(2, springGreen, 'Re'),
              pianoWidget(3, darkGreen, 'Mi'),
              pianoWidget(4, springGreen, 'Fa'),
              pianoWidget(5, darkGreen, 'So'),
              pianoWidget(6, springGreen, 'La'),
              pianoWidget(7, darkGreen, 'Ti'),
            ],
          ),
        ),
      ),
    );
  }
}
