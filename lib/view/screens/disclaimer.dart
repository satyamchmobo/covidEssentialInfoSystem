import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Disclaimer_page extends StatelessWidget {
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Disclaimer',
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blueGrey[300],
                ),
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Disclaimer",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                padding: EdgeInsets.only(top: 80),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                  color: Colors.grey[200],
                  child: Text("this is discalimer text"))
            ],
          ),
        ),
      ),
    ));
  }
}
