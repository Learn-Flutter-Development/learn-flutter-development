import 'package:app_name/presentation/pages/dashboard.dart';
import 'package:app_name/presentation/pages/error.dart';
import 'package:app_name/presentation/pages/piano.dart';
import 'package:app_name/presentation/pages/quize.dart';
import 'package:app_name/presentation/router/routes.dart';
import 'package:flutter/material.dart';

class RouterNavigator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<Dashboard>(builder: (context) => Dashboard());

      case dashboardPageRoute:
        return MaterialPageRoute<Dashboard>(builder: (context) => Dashboard());

      case quizePageRoute:
        return MaterialPageRoute<Quizzler>(builder: (context) => Quizzler());

      case pianoPageRoute:
        return MaterialPageRoute<XyloPhoneApp>(
            builder: (context) => XyloPhoneApp());

      default:
        return MaterialPageRoute<ErrorScreen>(
            builder: (context) => ErrorScreen());
    }
  }
}
