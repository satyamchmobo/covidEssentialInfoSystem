import 'package:covidessen/constants/languageConstants.dart';
import 'package:covidessen/view/screens/learningfiles/customWidgetMaking.dart';
import 'package:flutter/material.dart';

class CustomWidgetUsage extends StatefulWidget {
  const CustomWidgetUsage({Key key}) : super(key: key);

  @override
  _CustomWidgetUsageState createState() => _CustomWidgetUsageState();
}

class _CustomWidgetUsageState extends State<CustomWidgetUsage> {
  ColorUsage cs = new ColorUsage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: cs.customCard(
        text1: "satyam",
        text2: "chourasia",
        color: Colors.blue,
        height: 100,
        width: 200,
      )),
    );
  }
}
