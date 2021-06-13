import 'package:app_name/application/services/calculartor_bmi.dart';
import 'package:app_name/application/theme/constants.dart';
import 'package:app_name/presentation/pages/calculator.dart';
import 'package:app_name/presentation/pages/column_row.dart';
import 'package:app_name/presentation/pages/dashboard.dart';
import 'package:app_name/presentation/pages/error.dart';
import 'package:app_name/presentation/pages/piano.dart';
import 'package:app_name/presentation/pages/quize.dart';
import 'package:app_name/presentation/pages/result_page.dart';
import 'package:app_name/presentation/router/routes.dart';
import 'package:flutter/material.dart';

BMICalculator bMICalculator = BMICalculator(height: heightk, weight: weightk);

class RouterNavigator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<Dashboard>(builder: (context) => Dashboard());

      case dashboardPageRoute:
        return MaterialPageRoute<Dashboard>(builder: (context) => Dashboard());

      case quizePageRoute:
        return MaterialPageRoute<Quizzler>(builder: (context) => Quizzler());

      case calculatorPageRoute:
        return MaterialPageRoute<Calculator>(
            builder: (context) => Calculator());

      case rowColumPageRoute:
        return MaterialPageRoute<ColumnRow>(builder: (context) => ColumnRow());

      case pianoPageRoute:
        return MaterialPageRoute<XyloPhoneApp>(
            builder: (context) => XyloPhoneApp());

      case resultPageRoute:
        return MaterialPageRoute<ResultPage>(
            builder: (context) => ResultPage(
                  bmiResult: bMICalculator.calculateBMI(),
                  resultText: bMICalculator.getResult(),
                  Interpratation: bMICalculator.getInterpratation(),
                ));

      default:
        return MaterialPageRoute<ErrorScreen>(
            builder: (context) => ErrorScreen());
    }
  }
}
