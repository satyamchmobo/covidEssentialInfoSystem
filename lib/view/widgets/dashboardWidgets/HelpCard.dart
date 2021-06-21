import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget helpCard({String assetPath, String cardTitle}) {
  return Container(
    decoration: BoxDecoration(
        //backgroundBlendMode: ,
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    width: 90,
    height: 114,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 34,
          width: 33,
          child: Image.asset(assetPath),
        ),
        Text(
          cardTitle,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Color(0xFF3E5061),
                fontWeight: FontWeight.w500,
                fontSize: 11),
          ),
        )
      ],
    ),
  );
}
