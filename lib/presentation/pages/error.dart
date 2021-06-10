import 'package:flutter/cupertino.dart';

class ErrorScreen extends StatefulWidget {
  ErrorScreen({Key key}) : super(key: key);

  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Error page'));
  }
}
