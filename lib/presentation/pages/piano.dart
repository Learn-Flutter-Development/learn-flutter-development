import 'dart:ui';
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
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.limeAccent,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pianoWidget(1, Colors.blue),
              pianoWidget(2, Colors.green),
              pianoWidget(3, Colors.red),
              pianoWidget(4, Colors.white),
              pianoWidget(5, Colors.pink),
              pianoWidget(6, Colors.purple),
              pianoWidget(7, Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
