import 'dart:ui';
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
              pianoWidget(1, jadeGreen),
              pianoWidget(2, neonGreen),
              pianoWidget(3, forestGreen),
              pianoWidget(4, hourbourGreen),
              pianoWidget(5, darkGreen),
              pianoWidget(6, springGreen),
              pianoWidget(7, kellyGreen),
            ],
          ),
        ),
      ),
    );
  }
}
