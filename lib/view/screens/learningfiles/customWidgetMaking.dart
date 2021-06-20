import 'package:covidessen/constants/customcolor.dart';
import 'package:covidessen/constants/languageConstants.dart';
import 'package:flutter/material.dart';

class ColorUsage {
  
  Widget customCard({String text1,String text2,double height,double width,Color color}) {
    return Card(
      color: color,
      child: Container(
        height:height,
        width:width,
          child: Column(children: [
        Text(
          text1,
          style: TextStyle(
            color: CustomColor().primaryBlack,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: CustomColor().secondaryBlack,
          ),
        ),
      ])),
    );
  }
}
