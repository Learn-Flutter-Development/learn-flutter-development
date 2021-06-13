// import 'package:app_name/application/theme/colors.dart';
// import 'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   Calculator({Key key}) : super(key: key);

//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   int heightc = 180;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: primary,
//         appBar: AppBar(
//           title: Text(
//             'Height Slider',
//           ),
//           backgroundColor: primary,
//           centerTitle: true,
//         ),
//         body: SafeArea(
//             child: Column(children: [
//           Expanded(
//               child: Card(
//             color: inactive,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('HEIGHT', style: TextStyle(fontSize: 25.0, color: white2)),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,

//                   /// align 180 with the cm text
//                   crossAxisAlignment: CrossAxisAlignment.baseline,
//                   textBaseline: TextBaseline.alphabetic,

//                   children: <Widget>[
//                     Text(
//                       heightc.toString(),
//                       textAlign: TextAlign.center,
//                       style:
//                           TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
//                     ),
//                     Text(
//                       'cm',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 30.0,
//                       ),
//                     ),
//                   ],
//                 ),

//                 /// slider widget
//                 /// slidertheme is used to style  a slider and add extra animation
//                 SliderTheme(
//                   data: SliderTheme.of(context).copyWith(
//                       thumbColor: blue4,
//                       thumbShape:
//                           RoundSliderThumbShape(enabledThumbRadius: 10.0),
//                       overlayShape:
//                           RoundSliderOverlayShape(overlayRadius: 20.0)),
//                   child: Slider(
//                     value: heightc.toDouble(),
//                     min: 120.0,
//                     max: 200.0,
//                     activeColor: blue3,
//                     inactiveColor: blue4,
//                     onChanged: (double newvalue) {
//                       setState(() {
//                         heightc = newvalue.round();
//                       });
//                     },
//                   ),
//                 )
//               ],
//             ),
//           )),
//         ])));
//   }
// }
